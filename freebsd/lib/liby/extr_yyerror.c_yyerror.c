
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

int
yyerror(const char *msg)
{

 fprintf(stderr, "%s\n", msg);
 return(0);
}
