
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int LDNS_SECTION_ANSWER ;
 int VERB_ALGO ;
 int dnskey_verify_rrset (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,int ,struct module_qstate*) ;
 int sec_status_secure ;
 int verbose (int ,char*,int) ;

__attribute__((used)) static int
rr_is_selfsigned_revoked(struct module_env* env, struct val_env* ve,
 struct ub_packed_rrset_key* dnskey_rrset, size_t i,
 struct module_qstate* qstate)
{
 enum sec_status sec;
 char* reason = ((void*)0);
 verbose(VERB_ALGO, "seen REVOKE flag, check self-signed, rr %d",
  (int)i);


 sec = dnskey_verify_rrset(env, ve, dnskey_rrset, dnskey_rrset, i,
  &reason, LDNS_SECTION_ANSWER, qstate);
 return (sec == sec_status_secure);
}
