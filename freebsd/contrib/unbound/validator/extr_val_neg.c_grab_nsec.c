
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int time_t ;
struct TYPE_2__ {int lock; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ security; scalar_t__ rrsig_count; int ttl; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int lock_rw_unlock (int *) ;
 int nsec3_no_type (struct ub_packed_rrset_key*,scalar_t__) ;
 scalar_t__ nsec_has_type (struct ub_packed_rrset_key*,scalar_t__) ;
 struct ub_packed_rrset_key* packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,int ) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (struct rrset_cache*,int *,size_t,scalar_t__,scalar_t__,int ,int ,int ) ;
 scalar_t__ sec_status_secure ;
 scalar_t__ sec_status_unchecked ;

__attribute__((used)) static struct ub_packed_rrset_key*
grab_nsec(struct rrset_cache* rrset_cache, uint8_t* qname, size_t qname_len,
 uint16_t qtype, uint16_t qclass, uint32_t flags,
 struct regional* region, int checkbit, uint16_t checktype,
 time_t now)
{
 struct ub_packed_rrset_key* r, *k = rrset_cache_lookup(rrset_cache,
  qname, qname_len, qtype, qclass, flags, now, 0);
 struct packed_rrset_data* d;
 if(!k) return ((void*)0);
 d = (struct packed_rrset_data*)k->entry.data;
 if(d->ttl < now) {
  lock_rw_unlock(&k->entry.lock);
  return ((void*)0);
 }

 if( ! ( d->security == sec_status_secure ||
  (d->security == sec_status_unchecked &&
  d->rrsig_count > 0) ) ) {
  lock_rw_unlock(&k->entry.lock);
  return ((void*)0);
 }

 if(checkbit && (
  (qtype == LDNS_RR_TYPE_NSEC && nsec_has_type(k, checktype)) ||
  (qtype == LDNS_RR_TYPE_NSEC3 && !nsec3_no_type(k, checktype))
  )) {
  lock_rw_unlock(&k->entry.lock);
  return ((void*)0);
 }

 r = packed_rrset_copy_region(k, region, now);

 lock_rw_unlock(&k->entry.lock);
 return r;
}
