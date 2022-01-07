
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


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
typedef int pc_t ;
struct TYPE_17__ {int* dts_options; int dts_destructive; int dts_speculates; } ;
typedef TYPE_2__ dtrace_state_t ;
typedef int dtrace_rechdr_t ;
struct TYPE_18__ {int dtrd_size; int dtrd_action; int dtrd_arg; void* dtrd_format; void* dtrd_alignment; int dtrd_uarg; } ;
typedef TYPE_3__ dtrace_recdesc_t ;
typedef int dtrace_optval_t ;
struct TYPE_19__ {int dte_size; TYPE_6__* dte_action_last; TYPE_6__* dte_action; TYPE_2__* dte_state; } ;
typedef TYPE_4__ dtrace_ecb_t ;
struct TYPE_16__ {int dtdt_size; int dtdt_flags; int dtdt_kind; } ;
struct TYPE_20__ {TYPE_1__ dtdo_rtype; scalar_t__ dtdo_destructive; } ;
typedef TYPE_5__ dtrace_difo_t ;
struct TYPE_21__ {int dta_refcnt; scalar_t__ dta_kind; struct TYPE_21__* dta_next; struct TYPE_21__* dta_prev; TYPE_5__* dta_difo; TYPE_3__ dta_rec; } ;
typedef TYPE_6__ dtrace_action_t ;
struct TYPE_22__ {int dtad_arg; int dtad_kind; int dtad_uarg; TYPE_5__* dtad_difo; } ;
typedef TYPE_7__ dtrace_actdesc_t ;


 int ASSERT (int) ;
 int DIF_TF_BYREF ;
 int DIF_TYPE_STRING ;







 scalar_t__ DTRACEACT_ISAGG (int) ;
 scalar_t__ DTRACEACT_ISDESTRUCTIVE (int) ;
 size_t DTRACEOPT_JSTACKFRAMES ;
 size_t DTRACEOPT_JSTACKSTRSIZE ;
 size_t DTRACEOPT_STACKFRAMES ;
 size_t DTRACEOPT_STRSIZE ;
 size_t DTRACEOPT_USTACKFRAMES ;
 int DTRACE_USTACK_ARG (int,int) ;
 int DTRACE_USTACK_NFRAMES (int) ;
 int DTRACE_USTACK_STRSIZE (int) ;
 int EINVAL ;
 int KERNELBASE ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int P2ROUNDUP (int,int) ;
 int dtrace_difo_hold (TYPE_5__*) ;
 TYPE_6__* dtrace_ecb_aggregation_create (TYPE_4__*,TYPE_7__*) ;
 void* dtrace_format_add (TYPE_2__*,char*) ;
 int dtrace_lock ;
 TYPE_6__* kmem_zalloc (int,int ) ;

__attribute__((used)) static int
dtrace_ecb_action_add(dtrace_ecb_t *ecb, dtrace_actdesc_t *desc)
{
 dtrace_action_t *action, *last;
 dtrace_difo_t *dp = desc->dtad_difo;
 uint32_t size = 0, align = sizeof (uint8_t), mask;
 uint16_t format = 0;
 dtrace_recdesc_t *rec;
 dtrace_state_t *state = ecb->dte_state;
 dtrace_optval_t *opt = state->dts_options, nframes = 0, strsize;
 uint64_t arg = desc->dtad_arg;

 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(ecb->dte_action == ((void*)0) || ecb->dte_action->dta_refcnt == 1);

 if (DTRACEACT_ISAGG(desc->dtad_kind)) {




  dtrace_action_t *act;

  for (act = ecb->dte_action; act != ((void*)0); act = act->dta_next) {
   if (act->dta_kind == 151)
    return (EINVAL);

   if (act->dta_kind == 138)
    return (EINVAL);
  }

  action = dtrace_ecb_aggregation_create(ecb, desc);

  if (action == ((void*)0))
   return (EINVAL);
 } else {
  if (DTRACEACT_ISDESTRUCTIVE(desc->dtad_kind) ||
      (desc->dtad_kind == 150 &&
      dp != ((void*)0) && dp->dtdo_destructive)) {
   state->dts_destructive = 1;
  }

  switch (desc->dtad_kind) {
  case 141:
  case 142:
  case 134:
  case 147:
  case 150:




   if (arg == 0) {
    ASSERT(desc->dtad_kind == 142 ||
        desc->dtad_kind == 150);
    format = 0;
   } else {
    ASSERT(arg != 0);



    format = dtrace_format_add(state,
        (char *)(uintptr_t)arg);
   }


  case 145:
  case 133:
  case 132:
   if (dp == ((void*)0))
    return (EINVAL);

   if ((size = dp->dtdo_rtype.dtdt_size) != 0)
    break;

   if (dp->dtdo_rtype.dtdt_kind == DIF_TYPE_STRING) {
    if (!(dp->dtdo_rtype.dtdt_flags & DIF_TF_BYREF))
     return (EINVAL);

    size = opt[DTRACEOPT_STRSIZE];
   }

   break;

  case 137:
   if ((nframes = arg) == 0) {
    nframes = opt[DTRACEOPT_STACKFRAMES];
    ASSERT(nframes > 0);
    arg = nframes;
   }

   size = nframes * sizeof (pc_t);
   break;

  case 146:
   if ((strsize = DTRACE_USTACK_STRSIZE(arg)) == 0)
    strsize = opt[DTRACEOPT_JSTACKSTRSIZE];

   if ((nframes = DTRACE_USTACK_NFRAMES(arg)) == 0)
    nframes = opt[DTRACEOPT_JSTACKFRAMES];

   arg = DTRACE_USTACK_ARG(nframes, strsize);


  case 129:
   if (desc->dtad_kind != 146 &&
       (nframes = DTRACE_USTACK_NFRAMES(arg)) == 0) {
    strsize = DTRACE_USTACK_STRSIZE(arg);
    nframes = opt[DTRACEOPT_USTACKFRAMES];
    ASSERT(nframes > 0);
    arg = DTRACE_USTACK_ARG(nframes, strsize);
   }




   size = (nframes + 1) * sizeof (uint64_t);
   size += DTRACE_USTACK_STRSIZE(arg);
   size = P2ROUNDUP(size, (uint32_t)(sizeof (uintptr_t)));

   break;

  case 135:
  case 144:
   if (dp == ((void*)0) || ((size = dp->dtdo_rtype.dtdt_size) !=
       sizeof (uint64_t)) ||
       (dp->dtdo_rtype.dtdt_flags & DIF_TF_BYREF))
    return (EINVAL);
   break;

  case 128:
  case 130:
  case 131:
   if (dp == ((void*)0) ||
       (dp->dtdo_rtype.dtdt_size != sizeof (uint64_t)) ||
       (dp->dtdo_rtype.dtdt_flags & DIF_TF_BYREF))
    return (EINVAL);







   size = 2 * sizeof (uint64_t);
   break;

  case 136:
  case 153:
  case 143:
   break;

  case 152:
  case 149:
  case 139:
   if (dp == ((void*)0))
    return (EINVAL);
   break;

  case 148:
   if (dp == ((void*)0) ||
       (size = dp->dtdo_rtype.dtdt_size) != sizeof (int) ||
       (dp->dtdo_rtype.dtdt_flags & DIF_TF_BYREF))
    return (EINVAL);
   break;

  case 138:
   if (ecb->dte_size > sizeof (dtrace_rechdr_t))
    return (EINVAL);

   if (dp == ((void*)0))
    return (EINVAL);

   state->dts_speculates = 1;
   break;

  case 140:
       size = dp->dtdo_rtype.dtdt_size;
   break;

  case 151: {
   dtrace_action_t *act = ecb->dte_action;

   for (; act != ((void*)0); act = act->dta_next) {
    if (act->dta_kind == 151)
     return (EINVAL);
   }

   if (dp == ((void*)0))
    return (EINVAL);
   break;
  }

  default:
   return (EINVAL);
  }

  if (size != 0 || desc->dtad_kind == 138) {





   dtrace_action_t *act = ecb->dte_action;

   for (; act != ((void*)0); act = act->dta_next) {
    if (act->dta_kind == 151)
     return (EINVAL);
   }
  }

  action = kmem_zalloc(sizeof (dtrace_action_t), KM_SLEEP);
  action->dta_rec.dtrd_size = size;
 }

 action->dta_refcnt = 1;
 rec = &action->dta_rec;
 size = rec->dtrd_size;

 for (mask = sizeof (uint64_t) - 1; size != 0 && mask > 0; mask >>= 1) {
  if (!(size & mask)) {
   align = mask + 1;
   break;
  }
 }

 action->dta_kind = desc->dtad_kind;

 if ((action->dta_difo = dp) != ((void*)0))
  dtrace_difo_hold(dp);

 rec->dtrd_action = action->dta_kind;
 rec->dtrd_arg = arg;
 rec->dtrd_uarg = desc->dtad_uarg;
 rec->dtrd_alignment = (uint16_t)align;
 rec->dtrd_format = format;

 if ((last = ecb->dte_action_last) != ((void*)0)) {
  ASSERT(ecb->dte_action != ((void*)0));
  action->dta_prev = last;
  last->dta_next = action;
 } else {
  ASSERT(ecb->dte_action == ((void*)0));
  ecb->dte_action = action;
 }

 ecb->dte_action_last = action;

 return (0);
}
