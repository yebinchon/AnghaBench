
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct trust_anchor {scalar_t__ numDS; scalar_t__ numDNSKEY; int lock; } ;
struct module_env {int scratch; int * now; scalar_t__ key_cache; int anchors; } ;
struct key_entry_key {int name; } ;
struct dns_msg {scalar_t__ rep; } ;
struct delegpt {int name; int namelen; int namelabs; } ;


 int LDNS_RR_TYPE_DS ;
 struct trust_anchor* anchor_find (int ,int ,int ,int ,int ) ;
 struct key_entry_key* key_cache_obtain (scalar_t__,int ,int ,int ,int ,int ) ;
 scalar_t__ key_entry_isbad (struct key_entry_key*) ;
 scalar_t__ key_entry_isgood (struct key_entry_key*) ;
 scalar_t__ key_entry_isnull (struct key_entry_key*) ;
 int lock_basic_unlock (int *) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int regional_free_all (int ) ;
 scalar_t__ reply_find_rrset_section_ns (scalar_t__,int ,int ,int ,int ) ;

int
iter_indicates_dnssec(struct module_env* env, struct delegpt* dp,
        struct dns_msg* msg, uint16_t dclass)
{
 struct trust_anchor* a;

 if(!env || !env->anchors || !dp || !dp->name)
  return 0;

 if((a=anchor_find(env->anchors, dp->name, dp->namelabs, dp->namelen,
  dclass))) {
  if(a->numDS == 0 && a->numDNSKEY == 0) {

   lock_basic_unlock(&a->lock);
   return 0;
  }
  lock_basic_unlock(&a->lock);
  return 1;
 }

 if(msg && msg->rep &&
  reply_find_rrset_section_ns(msg->rep, dp->name, dp->namelen,
  LDNS_RR_TYPE_DS, dclass))
  return 1;

 if(env->key_cache) {
  struct key_entry_key* kk = key_cache_obtain(env->key_cache,
   dp->name, dp->namelen, dclass, env->scratch, *env->now);
  if(kk) {
   if(query_dname_compare(kk->name, dp->name) == 0) {
     if(key_entry_isgood(kk) || key_entry_isbad(kk)) {
    regional_free_all(env->scratch);
    return 1;
     } else if(key_entry_isnull(kk)) {
    regional_free_all(env->scratch);
    return 0;
     }
   }
   regional_free_all(env->scratch);
  }
 }
 return 0;
}
