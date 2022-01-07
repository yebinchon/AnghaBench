
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int TC_ELSE ;
 int USE (int **) ;
 int noexec ;
 int search (int ,int ,int *) ;

void
doelse (Char **v, struct command *c)
{
    USE(c);
    USE(v);
    if (!noexec)
 search(TC_ELSE, 0, ((void*)0));
}
