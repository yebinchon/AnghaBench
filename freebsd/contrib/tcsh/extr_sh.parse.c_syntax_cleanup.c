
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;


 int freesyn (struct command*) ;

void
syntax_cleanup(void *xt)
{
    struct command *t;

    t = xt;
    freesyn(t);
}
