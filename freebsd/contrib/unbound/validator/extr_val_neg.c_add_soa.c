
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int time_t ;
struct val_neg_zone {size_t len; int dclass; int * name; } ;
struct TYPE_2__ {int lock; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
struct dns_msg {int rep; } ;


 int LDNS_RR_TYPE_SOA ;
 int PACKED_RRSET_SOA_NEG ;
 int dns_msg_authadd (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 int lock_rw_unlock (int *) ;
 int * reply_nsec_signer (int ,size_t*,int *) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (struct rrset_cache*,int *,size_t,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int add_soa(struct rrset_cache* rrset_cache, time_t now,
 struct regional* region, struct dns_msg* msg, struct val_neg_zone* zone)
{
 struct ub_packed_rrset_key* soa;
 uint8_t* nm;
 size_t nmlen;
 uint16_t dclass;
 if(zone) {
  nm = zone->name;
  nmlen = zone->len;
  dclass = zone->dclass;
 } else {

  nm = reply_nsec_signer(msg->rep, &nmlen, &dclass);
  if(!nm)
   return 0;
 }
 soa = rrset_cache_lookup(rrset_cache, nm, nmlen, LDNS_RR_TYPE_SOA,
  dclass, PACKED_RRSET_SOA_NEG, now, 0);
 if(!soa)
  return 0;
 if(!dns_msg_authadd(msg, region, soa, now)) {
  lock_rw_unlock(&soa->entry.lock);
  return 0;
 }
 lock_rw_unlock(&soa->entry.lock);
 return 1;
}
