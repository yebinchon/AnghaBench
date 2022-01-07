
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYNTAX (char*,char const*) ;

void yyerror(const char *s)
{
 SYNTAX("%s", s);
}
