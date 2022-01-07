
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint16_t ;
typedef int dtrace_vstate_t ;
typedef int dtrace_state_t ;
struct TYPE_10__ {void** dtms_arg; } ;
typedef TYPE_1__ dtrace_mstate_t ;
struct TYPE_11__ {int dthps_vstate; TYPE_3__** dthps_actions; } ;
typedef TYPE_2__ dtrace_helpers_t ;
struct TYPE_12__ {int dtha_nactions; int ** dtha_actions; int * dtha_predicate; struct TYPE_12__* dtha_next; } ;
typedef TYPE_3__ dtrace_helper_action_t ;
typedef int dtrace_difo_t ;
struct TYPE_14__ {int cpuc_dtrace_flags; } ;
struct TYPE_13__ {TYPE_2__* p_dtrace_helpers; } ;


 int ASSERT (int) ;
 int CPU_DTRACE_FAULT ;
 int DTRACE_HELPTRACE_DONE ;
 int DTRACE_HELPTRACE_ERR ;
 int DTRACE_HELPTRACE_NEXT ;
 int DTRACE_NHELPER_ACTIONS ;
 TYPE_9__* cpu_core ;
 size_t curcpu ;
 TYPE_8__* curproc ;
 void* dtrace_dif_emulate (int *,TYPE_1__*,int *,int *) ;
 int dtrace_helper_trace (TYPE_3__*,TYPE_1__*,int *,int) ;
 int * dtrace_helptrace_buffer ;

__attribute__((used)) static uint64_t
dtrace_helper(int which, dtrace_mstate_t *mstate,
    dtrace_state_t *state, uint64_t arg0, uint64_t arg1)
{
 uint16_t *flags = &cpu_core[curcpu].cpuc_dtrace_flags;
 uint64_t sarg0 = mstate->dtms_arg[0];
 uint64_t sarg1 = mstate->dtms_arg[1];
 uint64_t rval = 0;
 dtrace_helpers_t *helpers = curproc->p_dtrace_helpers;
 dtrace_helper_action_t *helper;
 dtrace_vstate_t *vstate;
 dtrace_difo_t *pred;
 int i, trace = dtrace_helptrace_buffer != ((void*)0);

 ASSERT(which >= 0 && which < DTRACE_NHELPER_ACTIONS);

 if (helpers == ((void*)0))
  return (0);

 if ((helper = helpers->dthps_actions[which]) == ((void*)0))
  return (0);

 vstate = &helpers->dthps_vstate;
 mstate->dtms_arg[0] = arg0;
 mstate->dtms_arg[1] = arg1;
 for (; helper != ((void*)0); helper = helper->dtha_next) {
  if ((pred = helper->dtha_predicate) != ((void*)0)) {
   if (trace)
    dtrace_helper_trace(helper, mstate, vstate, 0);

   if (!dtrace_dif_emulate(pred, mstate, vstate, state))
    goto next;

   if (*flags & CPU_DTRACE_FAULT)
    goto err;
  }

  for (i = 0; i < helper->dtha_nactions; i++) {
   if (trace)
    dtrace_helper_trace(helper,
        mstate, vstate, i + 1);

   rval = dtrace_dif_emulate(helper->dtha_actions[i],
       mstate, vstate, state);

   if (*flags & CPU_DTRACE_FAULT)
    goto err;
  }

next:
  if (trace)
   dtrace_helper_trace(helper, mstate, vstate,
       DTRACE_HELPTRACE_NEXT);
 }

 if (trace)
  dtrace_helper_trace(helper, mstate, vstate,
      DTRACE_HELPTRACE_DONE);




 mstate->dtms_arg[0] = sarg0;
 mstate->dtms_arg[1] = sarg1;

 return (rval);

err:
 if (trace)
  dtrace_helper_trace(helper, mstate, vstate,
      DTRACE_HELPTRACE_ERR);




 mstate->dtms_arg[0] = sarg0;
 mstate->dtms_arg[1] = sarg1;

 return (0);
}
