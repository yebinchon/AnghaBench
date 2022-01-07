
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int uint_t ;
typedef int t ;
struct trapframe {int dummy; } ;
struct rm_priotracker {int dummy; } ;
struct reg {uintptr_t pc; uintptr_t* fixreg; int lr; uintptr_t ctr; } ;
struct TYPE_17__ {scalar_t__ p_pid; } ;
typedef TYPE_2__ proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_18__ {scalar_t__ ftt_pid; uintptr_t ftt_pc; int ftt_type; int ftt_instr; uintptr_t ftt_dest; int * ftt_retids; int ftt_bi; int ftt_bo; TYPE_5__* ftt_ids; TYPE_1__* ftt_proc; struct TYPE_18__* ftt_next; } ;
typedef TYPE_3__ fasttrap_tracepoint_t ;
struct TYPE_19__ {int ftp_id; int * ftp_argmap; } ;
typedef TYPE_4__ fasttrap_probe_t ;
struct TYPE_20__ {scalar_t__ fti_ptype; TYPE_4__* fti_probe; struct TYPE_20__* fti_next; } ;
typedef TYPE_5__ fasttrap_id_t ;
struct TYPE_21__ {TYPE_3__* ftb_data; } ;
typedef TYPE_6__ fasttrap_bucket_t ;
typedef int dtrace_icookie_t ;
struct TYPE_22__ {int t_dtrace_on; uintptr_t t_dtrace_pc; scalar_t__ t_dtrace_scrpc; uintptr_t t_dtrace_astpc; scalar_t__ t_dtrace_ret; scalar_t__ t_dtrace_npc; scalar_t__ t_dtrace_ft; scalar_t__ t_dtrace_step; } ;
struct TYPE_16__ {scalar_t__ ftpc_acount; } ;
struct TYPE_15__ {TYPE_6__* fth_table; } ;


 int ASSERT (int) ;
 int CPU_DTRACE_ENTRY ;
 scalar_t__ DTFTP_ENTRY ;
 scalar_t__ DTFTP_IS_ENABLED ;
 int DTRACE_CPUFLAG_CLEAR (int ) ;
 int DTRACE_CPUFLAG_SET (int ) ;
 size_t FASTTRAP_TPOINTS_INDEX (scalar_t__,uintptr_t) ;






 TYPE_2__* curproc ;
 TYPE_7__* curthread ;
 int dtrace_interrupt_disable () ;
 int dtrace_interrupt_enable (int ) ;
 int dtrace_probe (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 int fasttrap_branch_taken (int ,int ,struct reg*) ;
 int fasttrap_return_common (struct reg*,uintptr_t,scalar_t__,uintptr_t) ;
 int fasttrap_sigtrap (TYPE_2__*,TYPE_7__*,uintptr_t) ;
 int fasttrap_tp_lock ;
 TYPE_10__ fasttrap_tpoints ;
 int fasttrap_usdt_args (TYPE_4__*,struct reg*,int,uintptr_t*) ;
 int fill_regs (TYPE_7__*,struct reg*) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;
 int set_regs (TYPE_7__*,struct reg*) ;

int
fasttrap_pid_probe(struct trapframe *frame)
{
 struct reg reg, *rp;
 struct rm_priotracker tracker;
 proc_t *p = curproc;
 uintptr_t pc;
 uintptr_t new_pc = 0;
 fasttrap_bucket_t *bucket;
 fasttrap_tracepoint_t *tp, tp_local;
 pid_t pid;
 dtrace_icookie_t cookie;
 uint_t is_enabled = 0;

 fill_regs(curthread, &reg);
 rp = &reg;
 pc = rp->pc;







 if (curthread->t_dtrace_step) {
  ASSERT(curthread->t_dtrace_on);
  fasttrap_sigtrap(p, curthread, pc);
  return (0);
 }




 curthread->t_dtrace_ft = 0;
 curthread->t_dtrace_pc = 0;
 curthread->t_dtrace_npc = 0;
 curthread->t_dtrace_scrpc = 0;
 curthread->t_dtrace_astpc = 0;

 rm_rlock(&fasttrap_tp_lock, &tracker);
 pid = p->p_pid;
 bucket = &fasttrap_tpoints.fth_table[FASTTRAP_TPOINTS_INDEX(pid, pc)];




 for (tp = bucket->ftb_data; tp != ((void*)0); tp = tp->ftt_next) {
  if (pid == tp->ftt_pid && pc == tp->ftt_pc &&
      tp->ftt_proc->ftpc_acount != 0)
   break;
 }






 if (tp == ((void*)0)) {
  rm_runlock(&fasttrap_tp_lock, &tracker);
  return (-1);
 }

 if (tp->ftt_ids != ((void*)0)) {
  fasttrap_id_t *id;

  for (id = tp->ftt_ids; id != ((void*)0); id = id->fti_next) {
   fasttrap_probe_t *probe = id->fti_probe;

   if (id->fti_ptype == DTFTP_ENTRY) {





    cookie = dtrace_interrupt_disable();
    DTRACE_CPUFLAG_SET(CPU_DTRACE_ENTRY);
    dtrace_probe(probe->ftp_id, rp->fixreg[3],
      rp->fixreg[4], rp->fixreg[5], rp->fixreg[6],
      rp->fixreg[7]);
    DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_ENTRY);
    dtrace_interrupt_enable(cookie);
   } else if (id->fti_ptype == DTFTP_IS_ENABLED) {







    is_enabled = 1;
   } else if (probe->ftp_argmap == ((void*)0)) {
    dtrace_probe(probe->ftp_id, rp->fixreg[3],
        rp->fixreg[4], rp->fixreg[5], rp->fixreg[6],
        rp->fixreg[7]);
   } else {
    uintptr_t t[5];

    fasttrap_usdt_args(probe, rp,
        sizeof (t) / sizeof (t[0]), t);

    dtrace_probe(probe->ftp_id, t[0], t[1],
        t[2], t[3], t[4]);
   }
  }
 }






 tp_local = *tp;
 rm_runlock(&fasttrap_tp_lock, &tracker);
 tp = &tp_local;
 if (is_enabled) {
  rp->fixreg[3] = 1;
  new_pc = rp->pc + 4;
  goto done;
 }


 switch (tp->ftt_type) {
 case 128:
  new_pc = rp->pc + 4;
  break;
 case 132:
  if (!fasttrap_branch_taken(tp->ftt_bo, tp->ftt_bi, rp))
   break;

 case 133:
  if (tp->ftt_instr & 0x01)
   rp->lr = rp->pc + 4;
  new_pc = tp->ftt_dest;
  break;
 case 130:
 case 131:
  if (!fasttrap_branch_taken(tp->ftt_bo, tp->ftt_bi, rp))
   break;

  if (tp->ftt_type == 131)
   new_pc = rp->ctr;
  else
   new_pc = rp->lr;
  if (tp->ftt_instr & 0x01)
   rp->lr = rp->pc + 4;
  break;
 case 129:
  break;
 };
done:






 if (tp->ftt_retids != ((void*)0)) {







  if (tp->ftt_type != 129) {
   fasttrap_return_common(rp, pc, pid, new_pc);
  } else {
   ASSERT(curthread->t_dtrace_ret != 0);
   ASSERT(curthread->t_dtrace_pc == pc);
   ASSERT(curthread->t_dtrace_scrpc != 0);
   ASSERT(new_pc == curthread->t_dtrace_astpc);
  }
 }

 rp->pc = new_pc;
 set_regs(curthread, rp);

 return (0);
}
