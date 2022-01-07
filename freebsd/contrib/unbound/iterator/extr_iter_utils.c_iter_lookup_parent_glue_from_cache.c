
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct query_info {int qclass; } ;
struct module_env {int * now; int rrset_cache; } ;
struct delegpt_ns {int done_pside4; int done_pside6; int namelen; int name; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; } ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int PACKED_RRSET_PARENT_SIDE ;
 int VERB_ALGO ;
 int delegpt_add_rrset_A (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int) ;
 int delegpt_add_rrset_AAAA (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int) ;
 size_t delegpt_count_targets (struct delegpt*) ;
 int lock_rw_unlock (int *) ;
 int log_err (char*) ;
 int log_rrset_key (int ,char*,struct ub_packed_rrset_key*) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (int ,int ,int ,int ,int ,int ,int ,int ) ;

int iter_lookup_parent_glue_from_cache(struct module_env* env,
        struct delegpt* dp, struct regional* region, struct query_info* qinfo)
{
 struct ub_packed_rrset_key* akey;
 struct delegpt_ns* ns;
 size_t num = delegpt_count_targets(dp);
 for(ns = dp->nslist; ns; ns = ns->next) {

  akey = rrset_cache_lookup(env->rrset_cache, ns->name,
   ns->namelen, LDNS_RR_TYPE_A, qinfo->qclass,
   PACKED_RRSET_PARENT_SIDE, *env->now, 0);
  if(akey) {
   log_rrset_key(VERB_ALGO, "found parent-side", akey);
   ns->done_pside4 = 1;

   if(!delegpt_add_rrset_A(dp, region, akey, 1))
    log_err("malloc failure in lookup_parent_glue");
   lock_rw_unlock(&akey->entry.lock);
  }

  akey = rrset_cache_lookup(env->rrset_cache, ns->name,
   ns->namelen, LDNS_RR_TYPE_AAAA, qinfo->qclass,
   PACKED_RRSET_PARENT_SIDE, *env->now, 0);
  if(akey) {
   log_rrset_key(VERB_ALGO, "found parent-side", akey);
   ns->done_pside6 = 1;

   if(!delegpt_add_rrset_AAAA(dp, region, akey, 1))
    log_err("malloc failure in lookup_parent_glue");
   lock_rw_unlock(&akey->entry.lock);
  }
 }

 return delegpt_count_targets(dp) != num;
}
