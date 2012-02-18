%{
#include <stdio.h>
#include <string.h>
#include "example6.tab.h"
%}

%%
zone                    return ZONETOK;
file                    return FILETOK;
[a-zA-Z][a-zA-Z0-9]*    yylval=strdup(yytext); return WORD;
[a-zA-Z0-9\/.-]+        yylval=strdup(yytext); return FILENAME;
\"                      return QUOTE;
\{                      return OBRACE;
\}                      return EBRACE;
;                       return SEMICOLON;
\n                      /* ignore linebreak */
[ \t]+                  /* ignore whitespaces */;
%%