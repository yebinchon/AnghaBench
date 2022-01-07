
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
 struct process* pfind (int *) ;
 int pstart (struct process*,int ) ;
 int stderror (int,int ,int ) ;
 int strerror (int ) ;

void
dobg1(Char **v, struct command *c)
{
    struct process *pp;

    USE(c);
    pp = pfind(v[0]);
    if (!pstart(pp, 0)) {
 pp->p_procid = 0;
 stderror(ERR_NAME|ERR_BADJOB, pp->p_command, strerror(errno));
    }
}
