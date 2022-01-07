
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {scalar_t__ p_index; scalar_t__ p_procid; scalar_t__ p_jobid; int p_command; struct process* p_next; } ;
typedef int Strbuf ;
struct TYPE_2__ {struct process* p_next; } ;


 int Strbuf_append (int*,int ) ;
 int USE (int*) ;
 scalar_t__ pmaxindex ;
 TYPE_1__ proclist ;
 scalar_t__ tw_index ;

int
tw_job_next(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    struct process *j;

    USE(dir);
    USE(flags);
    for (;tw_index <= pmaxindex; tw_index++) {
 for (j = proclist.p_next; j != ((void*)0); j = j->p_next)
     if (j->p_index == tw_index && j->p_procid == j->p_jobid)
  break;
 if (j == ((void*)0))
     continue;
 Strbuf_append(res, j->p_command);
 tw_index++;
 return 1;
    }
    return 0;
}
