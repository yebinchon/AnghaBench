
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int TC_BRKSW ;
 int USE (int **) ;
 int noexec ;
 int search (int ,int ,int *) ;

void
doswbrk(Char **v, struct command *c)
{
    USE(v);
    USE(c);
    if (!noexec)
 search(TC_BRKSW, 0, ((void*)0));
}
