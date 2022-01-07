
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
struct delegpt {int has_parent_side_NS; int namelen; int name; } ;


 int LDNS_RR_TYPE_NS ;
 int PACKED_RRSET_PARENT_SIDE ;
 int VERB_ALGO ;
 int delegpt_rrset_add_ns (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int) ;
 int lock_rw_unlock (int *) ;
 int log_rrset_key (int ,char*,struct ub_packed_rrset_key*) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (int ,int ,int ,int ,int ,int ,int ,int ) ;

int
iter_lookup_parent_NS_from_cache(struct module_env* env, struct delegpt* dp,
 struct regional* region, struct query_info* qinfo)
{
 struct ub_packed_rrset_key* akey;
 akey = rrset_cache_lookup(env->rrset_cache, dp->name,
  dp->namelen, LDNS_RR_TYPE_NS, qinfo->qclass,
  PACKED_RRSET_PARENT_SIDE, *env->now, 0);
 if(akey) {
  log_rrset_key(VERB_ALGO, "found parent-side NS in cache", akey);
  dp->has_parent_side_NS = 1;

  if(!delegpt_rrset_add_ns(dp, region, akey, 1)) {
   lock_rw_unlock(&akey->entry.lock);
   return 0;
  }
  lock_rw_unlock(&akey->entry.lock);
 }
 return 1;
}
