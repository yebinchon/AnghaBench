
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int time_t ;
struct TYPE_3__ {int lock; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct msgreply_entry {TYPE_2__ entry; } ;
struct module_env {int rrset_cache; int * now; } ;
struct delegpt_ns {int namelen; int name; int lame; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; } ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int VERB_ALGO ;
 int delegpt_add_neg_msg (struct delegpt*,struct msgreply_entry*) ;
 int delegpt_add_rrset_A (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 int delegpt_add_rrset_AAAA (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 int lock_rw_unlock (int *) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 struct msgreply_entry* msg_cache_lookup (struct module_env*,int ,int ,int ,int ,int ,int ,int ) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (int ,int ,int ,int ,int ,int ,int ,int ) ;

int
cache_fill_missing(struct module_env* env, uint16_t qclass,
 struct regional* region, struct delegpt* dp)
{
 struct delegpt_ns* ns;
 struct msgreply_entry* neg;
 struct ub_packed_rrset_key* akey;
 time_t now = *env->now;
 for(ns = dp->nslist; ns; ns = ns->next) {
  akey = rrset_cache_lookup(env->rrset_cache, ns->name,
   ns->namelen, LDNS_RR_TYPE_A, qclass, 0, now, 0);
  if(akey) {
   if(!delegpt_add_rrset_A(dp, region, akey, ns->lame)) {
    lock_rw_unlock(&akey->entry.lock);
    return 0;
   }
   log_nametypeclass(VERB_ALGO, "found in cache",
    ns->name, LDNS_RR_TYPE_A, qclass);
   lock_rw_unlock(&akey->entry.lock);
  } else {


   neg = msg_cache_lookup(env, ns->name, ns->namelen,
    LDNS_RR_TYPE_A, qclass, 0, now, 0);
   if(neg) {
    delegpt_add_neg_msg(dp, neg);
    lock_rw_unlock(&neg->entry.lock);
   }
  }
  akey = rrset_cache_lookup(env->rrset_cache, ns->name,
   ns->namelen, LDNS_RR_TYPE_AAAA, qclass, 0, now, 0);
  if(akey) {
   if(!delegpt_add_rrset_AAAA(dp, region, akey, ns->lame)) {
    lock_rw_unlock(&akey->entry.lock);
    return 0;
   }
   log_nametypeclass(VERB_ALGO, "found in cache",
    ns->name, LDNS_RR_TYPE_AAAA, qclass);
   lock_rw_unlock(&akey->entry.lock);
  } else {


   neg = msg_cache_lookup(env, ns->name, ns->namelen,
    LDNS_RR_TYPE_AAAA, qclass, 0, now, 0);
   if(neg) {
    delegpt_add_neg_msg(dp, neg);
    lock_rw_unlock(&neg->entry.lock);
   }
  }
 }
 return 1;
}
