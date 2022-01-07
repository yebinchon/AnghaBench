
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_9__ ;
typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_26__ ;
typedef struct TYPE_40__ TYPE_25__ ;
typedef struct TYPE_39__ TYPE_24__ ;
typedef struct TYPE_38__ TYPE_23__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_19__ ;
typedef struct TYPE_35__ TYPE_18__ ;
typedef struct TYPE_34__ TYPE_17__ ;
typedef struct TYPE_33__ TYPE_16__ ;
typedef struct TYPE_32__ TYPE_15__ ;
typedef struct TYPE_31__ TYPE_14__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct trapframe {int dummy; } ;
struct pargs {int ar_length; int ar_args; } ;
typedef void* pc_t ;
struct TYPE_31__ {int lwp_errno; struct trapframe* lwp_regs; } ;
typedef TYPE_14__ klwp_t ;
typedef int dtrace_state_t ;
struct TYPE_30__ {int (* dtps_getargval ) (int ,int,int ,int,int) ;} ;
struct TYPE_32__ {int dtpv_name; int dtpv_arg; TYPE_13__ dtpv_pops; } ;
typedef TYPE_15__ dtrace_provider_t ;
struct TYPE_33__ {int dtms_present; int* dtms_arg; int dtms_timestamp; int dtms_walltimestamp; int dtms_ipl; int dtms_epid; int dtms_stackdepth; int dtms_ustackdepth; int dtms_caller; int dtms_ucaller; TYPE_26__* dtms_probe; } ;
typedef TYPE_16__ dtrace_mstate_t ;
struct TYPE_49__ {int cr_gid; int cr_uid; } ;
struct TYPE_48__ {int pr_id; int pr_name; } ;
struct TYPE_47__ {int zone_name; } ;
struct TYPE_46__ {int zone_name; } ;
struct TYPE_45__ {int p_comm; struct pargs* p_args; } ;
struct TYPE_44__ {int u_comm; } ;
struct TYPE_43__ {int u_comm; } ;
struct TYPE_42__ {int p_pid; } ;
struct TYPE_41__ {int dtpr_id; int dtpr_name; int dtpr_func; int dtpr_mod; TYPE_15__* dtpr_provider; int dtpr_aframes; int dtpr_arg; } ;
struct TYPE_40__ {int * cpuc_dtrace_illval; } ;
struct TYPE_39__ {int p_pid; TYPE_2__* p_pptr; } ;
struct TYPE_38__ {int t_dtrace_vtime; int td_errno; TYPE_14__* t_lwp; TYPE_12__* td_ucred; TYPE_11__* t_procp; TYPE_5__* td_proc; int t_tid; struct trapframe* td_frame; } ;
struct TYPE_37__ {int pid_id; } ;
struct TYPE_36__ {TYPE_9__* p_cred; TYPE_6__* p_zone; TYPE_3__ p_user; } ;
struct TYPE_35__ {int pid_id; } ;
struct TYPE_34__ {int p_pid; } ;
struct TYPE_29__ {int cr_gid; int cr_uid; TYPE_8__* cr_prison; } ;
struct TYPE_28__ {TYPE_10__* p_cred; TYPE_7__* p_zone; TYPE_4__ p_user; int p_ppid; TYPE_1__* p_pidp; } ;
struct TYPE_27__ {int cr_gid; int cr_uid; } ;


 int ASSERT (int) ;
 int CPU ;
 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_ILLOP ;
 int CPU_DTRACE_NOFAULT ;
 int CPU_ON_INTR (int ) ;
 int DIF_VAR_ARG0 ;
 int DIF_VAR_ARG9 ;
 int DTRACE_ANCHORED (TYPE_26__*) ;
 int DTRACE_CPUFLAG_CLEAR (int ) ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int DTRACE_MSTATE_ARGS ;
 int DTRACE_MSTATE_CALLER ;
 int DTRACE_MSTATE_EPID ;
 int DTRACE_MSTATE_IPL ;
 int DTRACE_MSTATE_PROBE ;
 int DTRACE_MSTATE_STACKDEPTH ;
 int DTRACE_MSTATE_TIMESTAMP ;
 int DTRACE_MSTATE_UCALLER ;
 int DTRACE_MSTATE_USTACKDEPTH ;
 int DTRACE_MSTATE_WALLTIMESTAMP ;
 TYPE_25__* cpu_core ;
 size_t curcpu ;
 TYPE_24__* curproc ;
 TYPE_23__* curthread ;
 int dtrace_caller (int) ;
 int dtrace_dif_varstr (uintptr_t,int *,TYPE_16__*) ;
 int dtrace_dif_varstrz (uintptr_t,int ,int *,TYPE_16__*) ;
 int dtrace_getarg (int,int) ;
 int dtrace_gethrestime () ;
 int dtrace_gethrtime () ;
 int dtrace_getipl () ;
 int dtrace_getpcstack (void**,int,int,int *) ;
 int dtrace_getreg (struct trapframe*,int) ;
 int dtrace_getstackdepth (int) ;
 int dtrace_getupcstack (int*,int) ;
 int dtrace_getustackdepth () ;
 int dtrace_priv_kernel (int *) ;
 int dtrace_priv_proc (int *) ;
 int dtrace_vtime_references ;
 TYPE_19__ p0 ;
 TYPE_18__ pid0 ;
 TYPE_17__ proc0 ;
 int stub1 (int ,int,int ,int,int) ;

__attribute__((used)) static uint64_t
dtrace_dif_variable(dtrace_mstate_t *mstate, dtrace_state_t *state, uint64_t v,
    uint64_t ndx)
{




 if (v >= DIF_VAR_ARG0 && v <= DIF_VAR_ARG9) {
  ndx = v - DIF_VAR_ARG0;
  v = 156;
 }

 switch (v) {
 case 156:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_ARGS);
  if (ndx >= sizeof (mstate->dtms_arg) /
      sizeof (mstate->dtms_arg[0])) {
   int aframes = mstate->dtms_probe->dtpr_aframes + 2;
   dtrace_provider_t *pv;
   uint64_t val;

   pv = mstate->dtms_probe->dtpr_provider;
   if (pv->dtpv_pops.dtps_getargval != ((void*)0))
    val = pv->dtpv_pops.dtps_getargval(pv->dtpv_arg,
        mstate->dtms_probe->dtpr_id,
        mstate->dtms_probe->dtpr_arg, ndx, aframes);
   else
    val = dtrace_getarg(ndx, aframes);
   if (mstate->dtms_probe != ((void*)0))
    return (val);

   ASSERT(0);
  }

  return (mstate->dtms_arg[ndx]);
 case 132: {
  struct trapframe *tframe;

  if (!dtrace_priv_proc(state))
   return (0);

  if ((tframe = curthread->td_frame) == ((void*)0)) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
   cpu_core[curcpu].cpuc_dtrace_illval = 0;
   return (0);
  }

  return (dtrace_getreg(tframe, ndx));
 }


 case 153:
  if (!dtrace_priv_proc(state))
   return (0);
  return ((uint64_t)(uintptr_t)curthread);

 case 135:
  if (!(mstate->dtms_present & DTRACE_MSTATE_TIMESTAMP)) {
   mstate->dtms_timestamp = dtrace_gethrtime();
   mstate->dtms_present |= DTRACE_MSTATE_TIMESTAMP;
  }
  return (mstate->dtms_timestamp);

 case 130:
  ASSERT(dtrace_vtime_references != 0);
  return (curthread->t_dtrace_vtime);

 case 129:
  if (!(mstate->dtms_present & DTRACE_MSTATE_WALLTIMESTAMP)) {
   mstate->dtms_walltimestamp = dtrace_gethrestime();
   mstate->dtms_present |= DTRACE_MSTATE_WALLTIMESTAMP;
  }
  return (mstate->dtms_walltimestamp);
 case 152:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_EPID);
  return (mstate->dtms_epid);

 case 147:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (mstate->dtms_probe->dtpr_id);

 case 137:
  if (!dtrace_priv_kernel(state))
   return (0);
  if (!(mstate->dtms_present & DTRACE_MSTATE_STACKDEPTH)) {
   int aframes = mstate->dtms_probe->dtpr_aframes + 2;

   mstate->dtms_stackdepth = dtrace_getstackdepth(aframes);
   mstate->dtms_present |= DTRACE_MSTATE_STACKDEPTH;
  }
  return (mstate->dtms_stackdepth);

 case 131:
  if (!dtrace_priv_proc(state))
   return (0);
  if (!(mstate->dtms_present & DTRACE_MSTATE_USTACKDEPTH)) {



   if (DTRACE_ANCHORED(mstate->dtms_probe) &&
       CPU_ON_INTR(CPU)) {
    mstate->dtms_ustackdepth = 0;
   } else {
    DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
    mstate->dtms_ustackdepth =
        dtrace_getustackdepth();
    DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT);
   }
   mstate->dtms_present |= DTRACE_MSTATE_USTACKDEPTH;
  }
  return (mstate->dtms_ustackdepth);

 case 155:
  if (!dtrace_priv_kernel(state))
   return (0);
  if (!(mstate->dtms_present & DTRACE_MSTATE_CALLER)) {
   int aframes = mstate->dtms_probe->dtpr_aframes + 2;

   if (!DTRACE_ANCHORED(mstate->dtms_probe)) {






    pc_t caller[2] = {0, 0};

    dtrace_getpcstack(caller, 2, aframes,
        (uint32_t *)(uintptr_t)mstate->dtms_arg[0]);
    mstate->dtms_caller = caller[1];
   } else if ((mstate->dtms_caller =
       dtrace_caller(aframes)) == -1) {





    pc_t caller = 0;

    dtrace_getpcstack(&caller, 1, aframes, ((void*)0));
    mstate->dtms_caller = caller;
   }

   mstate->dtms_present |= DTRACE_MSTATE_CALLER;
  }
  return (mstate->dtms_caller);

 case 134:
  if (!dtrace_priv_proc(state))
   return (0);

  if (!(mstate->dtms_present & DTRACE_MSTATE_UCALLER)) {
   uint64_t ustack[3];
   ustack[2] = 0;
   DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
   dtrace_getupcstack(ustack, 3);
   DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT);
   mstate->dtms_ucaller = ustack[2];
   mstate->dtms_present |= DTRACE_MSTATE_UCALLER;
  }

  return (mstate->dtms_ucaller);

 case 138:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (dtrace_dif_varstr(
      (uintptr_t)mstate->dtms_probe->dtpr_provider->dtpv_name,
      state, mstate));

 case 140:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (dtrace_dif_varstr(
      (uintptr_t)mstate->dtms_probe->dtpr_mod,
      state, mstate));

 case 141:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (dtrace_dif_varstr(
      (uintptr_t)mstate->dtms_probe->dtpr_func,
      state, mstate));

 case 139:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (dtrace_dif_varstr(
      (uintptr_t)mstate->dtms_probe->dtpr_name,
      state, mstate));

 case 143:
  if (!dtrace_priv_proc(state))
   return (0);
  return ((uint64_t)curproc->p_pid);


 case 142:
  if (!dtrace_priv_proc(state))
   return (0);
  if (curproc->p_pid == proc0.p_pid)
   return (curproc->p_pid);
  else
   return (curproc->p_pptr->p_pid);


 case 136:
  return ((uint64_t)curthread->t_tid);

 case 150: {
  struct pargs *p_args = curthread->td_proc->p_args;

  if (p_args == ((void*)0))
   return(0);

  return (dtrace_dif_varstrz(
      (uintptr_t) p_args->ar_args, p_args->ar_length, state, mstate));
 }

 case 149:
  return (dtrace_dif_varstr(
      (uintptr_t) curthread->td_proc->p_comm, state, mstate));


 case 128:
  return (0);


 case 133:
  if (!dtrace_priv_proc(state))
   return (0);
  return ((uint64_t)curthread->td_ucred->cr_uid);


 case 148:
  if (!dtrace_priv_proc(state))
   return (0);
  return ((uint64_t)curthread->td_ucred->cr_gid);


 case 151: {
  return (curthread->td_errno);

 }

 case 154: {
  return curcpu;
 }

 default:
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }
}
