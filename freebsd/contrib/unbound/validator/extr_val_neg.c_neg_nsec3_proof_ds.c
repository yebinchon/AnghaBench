
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int time_t ;
struct val_neg_zone {int dclass; int name; int nsec3_hash; } ;
struct val_neg_data {int len; int name; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
struct nsec3_cached_hash {size_t hash_len; size_t b32_len; scalar_t__* b32; scalar_t__* hash; } ;
struct dns_msg {int dummy; } ;
typedef int sldns_buffer ;
typedef int nc_b32 ;


 int LDNS_RR_TYPE_DS ;
 int LDNS_RR_TYPE_NS ;
 int LDNS_RR_TYPE_NSEC3 ;
 int LDNS_RR_TYPE_SOA ;
 int NSEC3_SHA_LEN ;
 int dns_msg_authadd (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 struct dns_msg* dns_msg_create (scalar_t__*,size_t,int ,int ,struct regional*,int) ;
 struct ub_packed_rrset_key* grab_nsec (struct rrset_cache*,int ,int ,int ,int ,int ,struct regional*,int,int ,int ) ;
 struct val_neg_data* neg_find_nsec3_ce (struct val_neg_zone*,scalar_t__*,size_t,int,int *,scalar_t__*,size_t*) ;
 struct ub_packed_rrset_key* neg_nsec3_getnc (struct val_neg_zone*,scalar_t__*,size_t,struct rrset_cache*,struct regional*,int ,scalar_t__*,int) ;
 int neg_params_ok (struct val_neg_zone*,struct ub_packed_rrset_key*) ;
 scalar_t__ nsec3_covers (int ,struct nsec3_cached_hash*,struct ub_packed_rrset_key*,int ,int *) ;
 int nsec3_has_optout (struct ub_packed_rrset_key*,int ) ;
 scalar_t__ nsec3_has_type (struct ub_packed_rrset_key*,int ,int ) ;

__attribute__((used)) static struct dns_msg*
neg_nsec3_proof_ds(struct val_neg_zone* zone, uint8_t* qname, size_t qname_len,
  int qlabs, sldns_buffer* buf, struct rrset_cache* rrset_cache,
  struct regional* region, time_t now, uint8_t* topname)
{
 struct dns_msg* msg;
 struct val_neg_data* data;
 uint8_t hashnc[NSEC3_SHA_LEN];
 size_t nclen;
 struct ub_packed_rrset_key* ce_rrset, *nc_rrset;
 struct nsec3_cached_hash c;
 uint8_t nc_b32[257];
 if(!zone->nsec3_hash)
  return ((void*)0);

 if(!(data=neg_find_nsec3_ce(zone, qname, qname_len, qlabs, buf,
  hashnc, &nclen))) {
  return ((void*)0);
 }


 ce_rrset = grab_nsec(rrset_cache, data->name, data->len,
  LDNS_RR_TYPE_NSEC3, zone->dclass, 0, region, 1,
  LDNS_RR_TYPE_DS, now);
 if(!ce_rrset)
  return ((void*)0);
 if(!neg_params_ok(zone, ce_rrset))
  return ((void*)0);

 if(nclen == 0) {


  if(nsec3_has_type(ce_rrset, 0, LDNS_RR_TYPE_SOA) ||
   nsec3_has_type(ce_rrset, 0, LDNS_RR_TYPE_DS) ||
   !nsec3_has_type(ce_rrset, 0, LDNS_RR_TYPE_NS))
   return ((void*)0);
  if(!(msg = dns_msg_create(qname, qname_len,
   LDNS_RR_TYPE_DS, zone->dclass, region, 1)))
   return ((void*)0);

  if(!dns_msg_authadd(msg, region, ce_rrset, 0))
   return ((void*)0);
  return msg;
 }



 if(!topname)
  return ((void*)0);



 nc_rrset = neg_nsec3_getnc(zone, hashnc, nclen, rrset_cache,
  region, now, nc_b32, sizeof(nc_b32));
 if(!nc_rrset)
  return ((void*)0);
 if(!neg_params_ok(zone, nc_rrset))
  return ((void*)0);
 if(!nsec3_has_optout(nc_rrset, 0))
  return ((void*)0);
 c.hash = hashnc;
 c.hash_len = nclen;
 c.b32 = nc_b32+1;
 c.b32_len = (size_t)nc_b32[0];
 if(nsec3_covers(zone->name, &c, nc_rrset, 0, buf)) {





  if(!(msg = dns_msg_create(qname, qname_len,
   LDNS_RR_TYPE_DS, zone->dclass, region, 3)))
   return ((void*)0);

  if(!dns_msg_authadd(msg, region, ce_rrset, 0))
   return ((void*)0);
  if(!dns_msg_authadd(msg, region, nc_rrset, 0))
   return ((void*)0);
  return msg;
 }
 return ((void*)0);
}
