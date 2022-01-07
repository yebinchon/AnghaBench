
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int time_t ;
struct TYPE_6__ {int lock; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ trust; } ;
struct module_env {int rrset_cache; TYPE_1__* cfg; int * now; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct TYPE_5__ {int security; int flags; } ;
struct TYPE_4__ {scalar_t__ deny_any; } ;


 int LDNS_RCODE_NOTIMPL ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_MX ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int dns_msg_ansadd (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 struct dns_msg* dns_msg_create (int *,size_t,scalar_t__,scalar_t__,struct regional*,size_t) ;
 int lock_rw_unlock (int *) ;
 int log_assert (int) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (int ,int *,size_t,scalar_t__,scalar_t__,int ,int ,int ) ;
 scalar_t__ rrset_trust_add_AA ;
 scalar_t__ rrset_trust_add_noAA ;
 scalar_t__ rrset_trust_auth_AA ;
 scalar_t__ rrset_trust_auth_noAA ;
 int sec_status_indeterminate ;

__attribute__((used)) static struct dns_msg*
fill_any(struct module_env* env,
 uint8_t* qname, size_t qnamelen, uint16_t qtype, uint16_t qclass,
 struct regional* region)
{
 time_t now = *env->now;
 struct dns_msg* msg = ((void*)0);
 uint16_t lookup[] = {LDNS_RR_TYPE_A, LDNS_RR_TYPE_AAAA,
  LDNS_RR_TYPE_MX, LDNS_RR_TYPE_SOA, LDNS_RR_TYPE_NS,
  LDNS_RR_TYPE_DNAME, 0};
 int i, num=6;
 log_assert(lookup[num] == 0);

 if(env->cfg->deny_any) {

  msg = dns_msg_create(qname, qnamelen, qtype, qclass,
   region, 0);
  if(!msg) {
   return ((void*)0);
  }

  msg->rep->flags |= LDNS_RCODE_NOTIMPL;
  msg->rep->security = sec_status_indeterminate;
  return msg;
 }

 for(i=0; i<num; i++) {

  struct ub_packed_rrset_key* rrset = rrset_cache_lookup(
   env->rrset_cache, qname, qnamelen, lookup[i],
   qclass, 0, now, 0);
  struct packed_rrset_data *d;
  if(!rrset)
   continue;


  d = (struct packed_rrset_data*)rrset->entry.data;
  if(d->trust == rrset_trust_add_noAA ||
   d->trust == rrset_trust_auth_noAA ||
   d->trust == rrset_trust_add_AA ||
   d->trust == rrset_trust_auth_AA) {
   lock_rw_unlock(&rrset->entry.lock);
   continue;
  }


  if(!msg) {
   msg = dns_msg_create(qname, qnamelen, qtype, qclass,
    region, (size_t)(num-i));
   if(!msg) {
    lock_rw_unlock(&rrset->entry.lock);
    return ((void*)0);
   }
  }


  if(!dns_msg_ansadd(msg, region, rrset, now)) {
   lock_rw_unlock(&rrset->entry.lock);
   return ((void*)0);
  }
  lock_rw_unlock(&rrset->entry.lock);
 }
 return msg;
}
