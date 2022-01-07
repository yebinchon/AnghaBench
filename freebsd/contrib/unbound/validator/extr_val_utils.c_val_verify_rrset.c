
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct val_env {int bogus_lock; int num_rrset_bogus; int bogus_ttl; } ;
struct TYPE_4__ {int rrset_class; int type; int dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ security; size_t count; size_t rrsig_count; int * rr_ttl; int ttl; int trust; } ;
struct module_qstate {int dummy; } ;
struct module_env {int * now; int rrset_cache; int scratch; } ;
typedef int sldns_pkt_section ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int VERB_ALGO ;
 int dnskeyset_verify_rrset (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,int *,char**,int ,struct module_qstate*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int ntohs (int ) ;
 int regional_free_all (int ) ;
 int rrset_check_sec_status (int ,struct ub_packed_rrset_key*,int ) ;
 int rrset_trust_validated ;
 int rrset_update_sec_status (int ,struct ub_packed_rrset_key*,int ) ;
 int sec_status_bogus ;
 scalar_t__ sec_status_secure ;
 int sec_status_to_string (int) ;
 int verbose (int ,char*,int ) ;

enum sec_status
val_verify_rrset(struct module_env* env, struct val_env* ve,
        struct ub_packed_rrset_key* rrset, struct ub_packed_rrset_key* keys,
 uint8_t* sigalg, char** reason, sldns_pkt_section section,
 struct module_qstate* qstate)
{
 enum sec_status sec;
 struct packed_rrset_data* d = (struct packed_rrset_data*)rrset->
  entry.data;
 if(d->security == sec_status_secure) {

  log_nametypeclass(VERB_ALGO, "verify rrset cached",
   rrset->rk.dname, ntohs(rrset->rk.type),
   ntohs(rrset->rk.rrset_class));
  return d->security;
 }

 rrset_check_sec_status(env->rrset_cache, rrset, *env->now);
 if(d->security == sec_status_secure) {
  log_nametypeclass(VERB_ALGO, "verify rrset from cache",
   rrset->rk.dname, ntohs(rrset->rk.type),
   ntohs(rrset->rk.rrset_class));
  return d->security;
 }
 log_nametypeclass(VERB_ALGO, "verify rrset", rrset->rk.dname,
  ntohs(rrset->rk.type), ntohs(rrset->rk.rrset_class));
 sec = dnskeyset_verify_rrset(env, ve, rrset, keys, sigalg, reason,
  section, qstate);
 verbose(VERB_ALGO, "verify result: %s", sec_status_to_string(sec));
 regional_free_all(env->scratch);




 if(sec > d->security) {
  d->security = sec;
  if(sec == sec_status_secure)
   d->trust = rrset_trust_validated;
  else if(sec == sec_status_bogus) {
   size_t i;

   d->ttl = ve->bogus_ttl;
   for(i=0; i<d->count+d->rrsig_count; i++)
    d->rr_ttl[i] = ve->bogus_ttl;


   lock_basic_lock(&ve->bogus_lock);
   ve->num_rrset_bogus++;
   lock_basic_unlock(&ve->bogus_lock);
  }

  rrset_update_sec_status(env->rrset_cache, rrset, *env->now);
 }

 return sec;
}
