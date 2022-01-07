
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int p_command; scalar_t__ p_procid; } ;
struct command {int dummy; } ;
typedef int Char ;


 int ERR_BADJOB ;
 int ERR_NAME ;
 int USE (struct command*) ;
 int errno ;
 int okpcntl () ;
 struct process* pfind (int *) ;
 int pjwait (struct process*) ;
 int pstart (struct process*,int) ;
 int stderror (int,int ,int ) ;
 int strerror (int ) ;

void
dofg(Char **v, struct command *c)
{
    struct process *pp;

    USE(c);
    okpcntl();
    ++v;
    do {
 pp = pfind(*v);
 if (!pstart(pp, 1)) {
     pp->p_procid = 0;
     stderror(ERR_NAME|ERR_BADJOB, pp->p_command, strerror(errno));
     continue;
 }
 pjwait(pp);
    } while (*v && *++v);
}
