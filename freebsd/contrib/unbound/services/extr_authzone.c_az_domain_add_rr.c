
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct auth_rrset {int data; } ;
struct auth_data {int dummy; } ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,scalar_t__) ;
 scalar_t__ rdata_duplicate (int ,int *,size_t) ;
 int rrset_add_rr (struct auth_rrset*,int ,int *,size_t,int) ;
 struct auth_rrset* rrset_create (struct auth_data*,scalar_t__,int ,int *,size_t) ;
 int rrset_moveover_rrsigs (struct auth_data*,scalar_t__,struct auth_rrset*,struct auth_rrset*) ;
 scalar_t__ rrsig_rdata_get_type_covered (int *,size_t) ;

__attribute__((used)) static int
az_domain_add_rr(struct auth_data* node, uint16_t rr_type, uint32_t rr_ttl,
 uint8_t* rdata, size_t rdatalen, int* duplicate)
{
 struct auth_rrset* rrset;

 if(rr_type == LDNS_RR_TYPE_RRSIG) {
  uint16_t ctype = rrsig_rdata_get_type_covered(rdata, rdatalen);
  if((rrset=az_domain_rrset(node, ctype))!= ((void*)0)) {


   if(rdata_duplicate(rrset->data, rdata, rdatalen)) {
    if(duplicate) *duplicate = 1;
    return 1;
   }
   if(!rrset_add_rr(rrset, rr_ttl, rdata, rdatalen, 1))
    return 0;
  } else if((rrset=az_domain_rrset(node, rr_type))!= ((void*)0)) {

   if(rdata_duplicate(rrset->data, rdata, rdatalen)) {
    if(duplicate) *duplicate = 1;
    return 1;
   }
   if(!rrset_add_rr(rrset, rr_ttl, rdata, rdatalen, 0))
    return 0;
  } else {

   if(!rrset_create(node, rr_type, rr_ttl, rdata,
    rdatalen))
    return 0;
  }
 } else {

  if((rrset=az_domain_rrset(node, rr_type))!= ((void*)0)) {

   if(rdata_duplicate(rrset->data, rdata, rdatalen)) {
    if(duplicate) *duplicate = 1;
    return 1;
   }
   if(!rrset_add_rr(rrset, rr_ttl, rdata, rdatalen, 0))
    return 0;
  } else {
   struct auth_rrset* rrsig;

   if(!(rrset=rrset_create(node, rr_type, rr_ttl, rdata,
    rdatalen)))
    return 0;




   if((rrsig=az_domain_rrset(node, LDNS_RR_TYPE_RRSIG))
    != ((void*)0)) {
    if(!rrset_moveover_rrsigs(node, rr_type,
     rrset, rrsig))
     return 0;
   }
  }
 }
 return 1;
}
