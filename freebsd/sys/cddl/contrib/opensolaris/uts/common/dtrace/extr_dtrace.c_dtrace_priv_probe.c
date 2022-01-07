
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_19__ {int p_flag; } ;
typedef TYPE_3__ proc_t ;
struct TYPE_17__ {TYPE_10__* dcr_cred; } ;
struct TYPE_20__ {TYPE_1__ dts_cred; } ;
typedef TYPE_4__ dtrace_state_t ;
struct TYPE_23__ {int (* dtps_mode ) (int ,int ,int ) ;} ;
struct TYPE_21__ {int dtpv_arg; TYPE_7__ dtpv_pops; } ;
typedef TYPE_5__ dtrace_provider_t ;
struct TYPE_22__ {int dtpr_arg; int dtpr_id; TYPE_5__* dtpr_provider; } ;
typedef TYPE_6__ dtrace_probe_t ;
typedef TYPE_7__ dtrace_pops_t ;
struct TYPE_24__ {int dtms_access; } ;
typedef TYPE_8__ dtrace_mstate_t ;
struct TYPE_25__ {int dte_cond; TYPE_6__* dte_probe; } ;
typedef TYPE_9__ dtrace_ecb_t ;
struct TYPE_16__ {scalar_t__ cr_uid; scalar_t__ cr_ruid; scalar_t__ cr_suid; scalar_t__ cr_gid; scalar_t__ cr_rgid; scalar_t__ cr_sgid; TYPE_2__* cr_zone; } ;
typedef TYPE_10__ cred_t ;
struct TYPE_18__ {scalar_t__ zone_id; } ;


 int ASSERT (int) ;
 TYPE_10__* CRED () ;
 int DTRACE_ACCESS_ARGS ;
 int DTRACE_ACCESS_PROC ;
 int DTRACE_COND_OWNER ;
 int DTRACE_COND_USERMODE ;
 int DTRACE_COND_ZONEOWNER ;
 int DTRACE_MODE_KERNEL ;
 int DTRACE_MODE_NOPRIV_DROP ;
 int DTRACE_MODE_NOPRIV_RESTRICT ;
 int DTRACE_MODE_USER ;
 int SNOCD ;
 int curthread ;
 int stub1 (int ,int ,int ) ;
 TYPE_3__* ttoproc (int ) ;

__attribute__((used)) static int
dtrace_priv_probe(dtrace_state_t *state, dtrace_mstate_t *mstate,
    dtrace_ecb_t *ecb)
{
 dtrace_probe_t *probe = ecb->dte_probe;
 dtrace_provider_t *prov = probe->dtpr_provider;
 dtrace_pops_t *pops = &prov->dtpv_pops;
 int mode = DTRACE_MODE_NOPRIV_DROP;

 ASSERT(ecb->dte_cond);
 if (ecb->dte_cond & DTRACE_COND_OWNER) {
  cred_t *cr;
  cred_t *s_cr = state->dts_cred.dcr_cred;
  proc_t *proc;

  ASSERT(s_cr != ((void*)0));

  if ((cr = CRED()) == ((void*)0) ||
      s_cr->cr_uid != cr->cr_uid ||
      s_cr->cr_uid != cr->cr_ruid ||
      s_cr->cr_uid != cr->cr_suid ||
      s_cr->cr_gid != cr->cr_gid ||
      s_cr->cr_gid != cr->cr_rgid ||
      s_cr->cr_gid != cr->cr_sgid ||
      (proc = ttoproc(curthread)) == ((void*)0) ||
      (proc->p_flag & SNOCD)) {
   if (mode & DTRACE_MODE_NOPRIV_DROP)
    return (0);




  }
 }
 return (1);
}
