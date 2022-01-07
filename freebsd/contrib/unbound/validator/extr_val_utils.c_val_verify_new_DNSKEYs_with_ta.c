
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_env {int dummy; } ;
struct TYPE_2__ {int rrset_class; int dname_len; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct module_qstate {int dummy; } ;
struct module_env {int * now; } ;
struct key_entry_key {int dummy; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int ALGO_NEEDS_MAX ;
 int BOGUS_KEY_TTL ;
 struct key_entry_key* key_entry_create_bad (struct regional*,int ,int ,int ,int ,int ) ;
 struct key_entry_key* key_entry_create_null (struct regional*,int ,int ,int ,int ,int ) ;
 struct key_entry_key* key_entry_create_rrset (struct regional*,int ,int ,int ,struct ub_packed_rrset_key*,int *,int ) ;
 int ntohs (int ) ;
 int rrset_get_ttl (struct ub_packed_rrset_key*) ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int val_verify_DNSKEY_with_TA (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,int *,char**,struct module_qstate*) ;

struct key_entry_key*
val_verify_new_DNSKEYs_with_ta(struct regional* region, struct module_env* env,
 struct val_env* ve, struct ub_packed_rrset_key* dnskey_rrset,
 struct ub_packed_rrset_key* ta_ds_rrset,
 struct ub_packed_rrset_key* ta_dnskey_rrset, int downprot,
 char** reason, struct module_qstate* qstate)
{
 uint8_t sigalg[ALGO_NEEDS_MAX+1];
 enum sec_status sec = val_verify_DNSKEY_with_TA(env, ve,
  dnskey_rrset, ta_ds_rrset, ta_dnskey_rrset,
  downprot?sigalg:((void*)0), reason, qstate);

 if(sec == sec_status_secure) {
  return key_entry_create_rrset(region,
   dnskey_rrset->rk.dname, dnskey_rrset->rk.dname_len,
   ntohs(dnskey_rrset->rk.rrset_class), dnskey_rrset,
   downprot?sigalg:((void*)0), *env->now);
 } else if(sec == sec_status_insecure) {
  return key_entry_create_null(region, dnskey_rrset->rk.dname,
   dnskey_rrset->rk.dname_len,
   ntohs(dnskey_rrset->rk.rrset_class),
   rrset_get_ttl(dnskey_rrset), *env->now);
 }
 return key_entry_create_bad(region, dnskey_rrset->rk.dname,
  dnskey_rrset->rk.dname_len, ntohs(dnskey_rrset->rk.rrset_class),
  BOGUS_KEY_TTL, *env->now);
}
