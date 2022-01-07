
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rm_priotracker {int dummy; } ;
struct reg {int r_rbx; int r_rax; } ;
typedef scalar_t__ pid_t ;
struct TYPE_9__ {scalar_t__ ftt_pid; uintptr_t ftt_pc; scalar_t__ ftt_type; TYPE_4__* ftt_retids; TYPE_1__* ftt_proc; struct TYPE_9__* ftt_next; } ;
typedef TYPE_3__ fasttrap_tracepoint_t ;
struct TYPE_10__ {TYPE_2__* fti_probe; struct TYPE_10__* fti_next; } ;
typedef TYPE_4__ fasttrap_id_t ;
struct TYPE_11__ {TYPE_3__* ftb_data; } ;
typedef TYPE_5__ fasttrap_bucket_t ;
struct TYPE_12__ {TYPE_5__* fth_table; } ;
struct TYPE_8__ {uintptr_t ftp_faddr; uintptr_t ftp_fsize; int ftp_id; } ;
struct TYPE_7__ {scalar_t__ ftpc_acount; } ;


 size_t FASTTRAP_TPOINTS_INDEX (scalar_t__,uintptr_t) ;
 scalar_t__ FASTTRAP_T_RET ;
 scalar_t__ FASTTRAP_T_RET16 ;
 int dtrace_probe (int ,uintptr_t,int ,int ,int ,int ) ;
 int fasttrap_tp_lock ;
 TYPE_6__ fasttrap_tpoints ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;

__attribute__((used)) static void
fasttrap_return_common(struct reg *rp, uintptr_t pc, pid_t pid,
    uintptr_t new_pc)
{
 fasttrap_tracepoint_t *tp;
 fasttrap_bucket_t *bucket;
 fasttrap_id_t *id;
 struct rm_priotracker tracker;

 rm_rlock(&fasttrap_tp_lock, &tracker);
 bucket = &fasttrap_tpoints.fth_table[FASTTRAP_TPOINTS_INDEX(pid, pc)];

 for (tp = bucket->ftb_data; tp != ((void*)0); tp = tp->ftt_next) {
  if (pid == tp->ftt_pid && pc == tp->ftt_pc &&
      tp->ftt_proc->ftpc_acount != 0)
   break;
 }






 if (tp == ((void*)0)) {
  rm_runlock(&fasttrap_tp_lock, &tracker);
  return;
 }

 for (id = tp->ftt_retids; id != ((void*)0); id = id->fti_next) {





  if (tp->ftt_type != FASTTRAP_T_RET &&
      tp->ftt_type != FASTTRAP_T_RET16 &&
      new_pc - id->fti_probe->ftp_faddr <
      id->fti_probe->ftp_fsize)
   continue;

  dtrace_probe(id->fti_probe->ftp_id,
      pc - id->fti_probe->ftp_faddr,
      rp->r_rax, rp->r_rbx, 0, 0);
 }

 rm_runlock(&fasttrap_tp_lock, &tracker);
}
