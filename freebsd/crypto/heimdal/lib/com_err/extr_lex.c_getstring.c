
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int x ;
struct TYPE_2__ {int * string; } ;


 int EOF ;
 int STRING ;
 int _lex_error_message (char*) ;
 int err (int,char*) ;
 int input () ;
 int lineno ;
 int * strdup (char*) ;
 TYPE_1__ yylval ;

__attribute__((used)) static int
getstring(void)
{
    char x[128];
    int i = 0;
    int c;
    int quote = 0;
    while(i < sizeof(x) - 1 && (c = input()) != EOF){
 if(quote) {
     x[i++] = c;
     quote = 0;
     continue;
 }
 if(c == '\n'){
     _lex_error_message("unterminated string");
     lineno++;
     break;
 }
 if(c == '\\'){
     quote++;
     continue;
 }
 if(c == '\"')
     break;
 x[i++] = c;
    }
    x[i] = '\0';
    yylval.string = strdup(x);
    if (yylval.string == ((void*)0))
        err(1, "malloc");
    return STRING;
}
