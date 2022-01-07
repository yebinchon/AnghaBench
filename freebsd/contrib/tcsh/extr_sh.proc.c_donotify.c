
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int p_flags; } ;
struct command {int dummy; } ;
typedef int Char ;


 int PNOTIFY ;
 int USE (struct command*) ;
 struct process* pfind (int *) ;

void
donotify(Char **v, struct command *c)
{
    struct process *pp;

    USE(c);
    pp = pfind(*++v);
    pp->p_flags |= PNOTIFY;
}
