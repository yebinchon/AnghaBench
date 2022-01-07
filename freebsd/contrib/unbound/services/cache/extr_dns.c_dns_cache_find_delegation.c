
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int time_t ;
struct TYPE_4__ {int lock; scalar_t__ data; } ;
struct TYPE_3__ {int dname; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int count; } ;
struct module_env {int dummy; } ;
struct dns_msg {int dummy; } ;
struct delegpt {int dummy; } ;


 int LDNS_RR_TYPE_NS ;
 struct delegpt* delegpt_create (struct regional*) ;
 int delegpt_rrset_add_ns (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 int delegpt_set_name (struct delegpt*,struct regional*,int ) ;
 int dns_msg_authadd (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 struct dns_msg* dns_msg_create (int *,size_t,int ,int ,struct regional*,int) ;
 int find_add_addrs (struct module_env*,int ,struct regional*,struct delegpt*,int ,struct dns_msg**) ;
 int find_add_ds (struct module_env*,struct regional*,struct dns_msg*,struct delegpt*,int ) ;
 struct ub_packed_rrset_key* find_closest_of_type (struct module_env*,int *,size_t,int ,int ,int ,int ) ;
 int lock_rw_unlock (int *) ;
 int log_err (char*) ;

struct delegpt*
dns_cache_find_delegation(struct module_env* env, uint8_t* qname,
 size_t qnamelen, uint16_t qtype, uint16_t qclass,
 struct regional* region, struct dns_msg** msg, time_t now)
{

 struct ub_packed_rrset_key* nskey;
 struct packed_rrset_data* nsdata;
 struct delegpt* dp;

 nskey = find_closest_of_type(env, qname, qnamelen, qclass, now,
  LDNS_RR_TYPE_NS, 0);
 if(!nskey)
  return ((void*)0);
 nsdata = (struct packed_rrset_data*)nskey->entry.data;

 dp = delegpt_create(region);
 if(!dp || !delegpt_set_name(dp, region, nskey->rk.dname)) {
  lock_rw_unlock(&nskey->entry.lock);
  log_err("find_delegation: out of memory");
  return ((void*)0);
 }

 if(msg) {





  *msg = dns_msg_create(qname, qnamelen, qtype, qclass, region,
   2 + nsdata->count*2);
  if(!*msg || !dns_msg_authadd(*msg, region, nskey, now)) {
   lock_rw_unlock(&nskey->entry.lock);
   log_err("find_delegation: out of memory");
   return ((void*)0);
  }
 }
 if(!delegpt_rrset_add_ns(dp, region, nskey, 0))
  log_err("find_delegation: addns out of memory");
 lock_rw_unlock(&nskey->entry.lock);

 if(msg)
  find_add_ds(env, region, *msg, dp, now);

 if(!find_add_addrs(env, qclass, region, dp, now, msg))
  log_err("find_delegation: addrs out of memory");
 return dp;
}
