
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int lock; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct query_info {size_t qname_len; int * local_alias; int qclass; int qtype; int * qname; } ;
struct module_env {int cfg; int * now; int scratch_buffer; int rrset_cache; int neg_cache; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct TYPE_4__ {int an_numrrsets; int rrset_count; struct ub_packed_rrset_key** rrsets; } ;


 int LDNS_RR_TYPE_DS ;
 struct dns_msg* dns_msg_create (int *,size_t,int ,int ,struct regional*,int) ;
 int lock_rw_unlock (int *) ;
 struct ub_packed_rrset_key* packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,int ) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (int ,int *,size_t,int ,int ,int ,int ,int ) ;
 struct dns_msg* val_neg_getmsg (int ,struct query_info*,struct regional*,int ,int ,int ,int ,int *,int ) ;

struct dns_msg*
val_find_DS(struct module_env* env, uint8_t* nm, size_t nmlen, uint16_t c,
 struct regional* region, uint8_t* topname)
{
 struct dns_msg* msg;
 struct query_info qinfo;
 struct ub_packed_rrset_key *rrset = rrset_cache_lookup(
  env->rrset_cache, nm, nmlen, LDNS_RR_TYPE_DS, c, 0,
  *env->now, 0);
 if(rrset) {

  struct ub_packed_rrset_key* copy = packed_rrset_copy_region(
   rrset, region, *env->now);
  lock_rw_unlock(&rrset->entry.lock);
  if(!copy)
   return ((void*)0);
  msg = dns_msg_create(nm, nmlen, LDNS_RR_TYPE_DS, c, region, 1);
  if(!msg)
   return ((void*)0);
  msg->rep->rrsets[0] = copy;
  msg->rep->rrset_count++;
  msg->rep->an_numrrsets++;
  return msg;
 }

 qinfo.qname = nm;
 qinfo.qname_len = nmlen;
 qinfo.qtype = LDNS_RR_TYPE_DS;
 qinfo.qclass = c;
 qinfo.local_alias = ((void*)0);

 msg = val_neg_getmsg(env->neg_cache, &qinfo, region, env->rrset_cache,
  env->scratch_buffer, *env->now, 0, topname, env->cfg);
 return msg;
}
