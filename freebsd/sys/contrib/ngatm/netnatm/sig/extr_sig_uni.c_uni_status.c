
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni {size_t custat; size_t glob_start; size_t glob_respond; int arg; TYPE_1__* funcs; int delq; int workq; scalar_t__ working; } ;
struct TYPE_2__ {int (* status ) (struct uni*,int ,void*,char*,char*) ;} ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 char** custat_names ;
 char** globstat_names ;
 int stub1 (struct uni*,int ,void*,char*,char*) ;
 int stub2 (struct uni*,int ,void*,char*,char*) ;
 int stub3 (struct uni*,int ,void*,char*,char*) ;
 int stub4 (struct uni*,int ,void*,char*,char*) ;
 int stub5 (struct uni*,int ,void*,char*,char*) ;
 int stub6 (struct uni*,int ,void*,char*,char*) ;

void
uni_status(struct uni *uni, void *arg)
{
 uni->funcs->status(uni, uni->arg, arg,
     "working: %s\n", uni->working ? "yes" : "no");
 uni->funcs->status(uni, uni->arg, arg,
     "work queue: %sempty\n", TAILQ_EMPTY(&uni->workq)? "" : "not ");
 uni->funcs->status(uni, uni->arg, arg,
     "delayed work queue: %sempty\n",
     TAILQ_EMPTY(&uni->delq)? "" : "not ");
 uni->funcs->status(uni, uni->arg, arg,
     "coordinator: %s\n", custat_names[uni->custat]);
 uni->funcs->status(uni, uni->arg, arg,
     "reset-start: %s\n", globstat_names[uni->glob_start]);
 uni->funcs->status(uni, uni->arg, arg,
     "reset-respond: %s\n", globstat_names[uni->glob_respond]);
}
