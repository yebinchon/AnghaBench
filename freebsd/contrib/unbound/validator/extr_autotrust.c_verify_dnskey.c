
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct trust_anchor {int dnskey_rrset; int ds_rrset; } ;
struct module_qstate {int dummy; } ;
struct module_env {TYPE_1__* cfg; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_2__ {int harden_algo_downgrade; } ;


 int ALGO_NEEDS_MAX ;
 int VERB_ALGO ;
 int sec_status_secure ;
 int sec_status_to_string (int) ;
 int val_verify_DNSKEY_with_TA (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,int ,int ,int *,char**,struct module_qstate*) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static int
verify_dnskey(struct module_env* env, struct val_env* ve,
        struct trust_anchor* tp, struct ub_packed_rrset_key* rrset,
 struct module_qstate* qstate)
{
 char* reason = ((void*)0);
 uint8_t sigalg[ALGO_NEEDS_MAX+1];
 int downprot = env->cfg->harden_algo_downgrade;
 enum sec_status sec = val_verify_DNSKEY_with_TA(env, ve, rrset,
  tp->ds_rrset, tp->dnskey_rrset, downprot?sigalg:((void*)0), &reason,
  qstate);




 verbose(VERB_ALGO, "autotrust: validate DNSKEY with anchor: %s",
  sec_status_to_string(sec));
 return sec == sec_status_secure;
}
