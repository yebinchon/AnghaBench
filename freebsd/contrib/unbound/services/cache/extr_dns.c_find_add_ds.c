
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_6__ {int lock; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; } ;
struct regional {int dummy; } ;
struct module_env {int rrset_cache; } ;
struct TYPE_4__ {int qclass; } ;
struct dns_msg {TYPE_2__* rep; TYPE_1__ qinfo; } ;
struct delegpt {int namelen; int name; } ;
struct TYPE_5__ {size_t rrset_count; int ns_numrrsets; int * rrsets; } ;


 int LDNS_RR_TYPE_DS ;
 int LDNS_RR_TYPE_NSEC ;
 int lock_rw_unlock (int *) ;
 scalar_t__ nsec_has_type (struct ub_packed_rrset_key*,int ) ;
 int packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,int ) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
find_add_ds(struct module_env* env, struct regional* region,
 struct dns_msg* msg, struct delegpt* dp, time_t now)
{

 struct ub_packed_rrset_key* rrset = rrset_cache_lookup(
  env->rrset_cache, dp->name, dp->namelen, LDNS_RR_TYPE_DS,
  msg->qinfo.qclass, 0, now, 0);
 if(!rrset) {


  rrset = rrset_cache_lookup(env->rrset_cache, dp->name,
   dp->namelen, LDNS_RR_TYPE_NSEC, msg->qinfo.qclass,
   0, now, 0);



  if(rrset && nsec_has_type(rrset, LDNS_RR_TYPE_DS)) {
   lock_rw_unlock(&rrset->entry.lock);
   rrset = ((void*)0);
  }
 }
 if(rrset) {

  if((msg->rep->rrsets[msg->rep->rrset_count] =
   packed_rrset_copy_region(rrset, region, now))) {
   msg->rep->ns_numrrsets++;
   msg->rep->rrset_count++;
  }
  lock_rw_unlock(&rrset->entry.lock);
 }
}
