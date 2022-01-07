
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int USE (struct command*) ;
 int aliases ;
 int tw_cmd_free () ;
 int unset1 (int **,int *) ;

void
unalias(Char **v, struct command *c)
{
    USE(c);
    unset1(v, &aliases);
    tw_cmd_free();
}
