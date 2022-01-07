
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _lex_error_message (char*,char*) ;

void
yyerror (char *s)
{
     _lex_error_message ("%s\n", s);
}
