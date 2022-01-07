
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int USE (struct command*) ;
 int completions ;
 int unset1 (int **,int *) ;

void
douncomplete(Char **v, struct command *t)
{
    USE(t);
    unset1(v, &completions);
}
