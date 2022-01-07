
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* dcr_cred; } ;
struct TYPE_7__ {TYPE_1__ dts_cred; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_8__ {scalar_t__ cr_uid; scalar_t__ cr_ruid; scalar_t__ cr_suid; scalar_t__ cr_gid; scalar_t__ cr_rgid; scalar_t__ cr_sgid; } ;
typedef TYPE_3__ cred_t ;


 int ASSERT (int ) ;
 TYPE_3__* CRED () ;

__attribute__((used)) static int
dtrace_priv_proc_common_user(dtrace_state_t *state)
{
 cred_t *cr, *s_cr = state->dts_cred.dcr_cred;





 ASSERT(s_cr != ((void*)0));

 if ((cr = CRED()) != ((void*)0) &&
     s_cr->cr_uid == cr->cr_uid &&
     s_cr->cr_uid == cr->cr_ruid &&
     s_cr->cr_uid == cr->cr_suid &&
     s_cr->cr_gid == cr->cr_gid &&
     s_cr->cr_gid == cr->cr_rgid &&
     s_cr->cr_gid == cr->cr_sgid)
  return (1);

 return (0);
}
