
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust_anchor {scalar_t__ numDS; scalar_t__ numDNSKEY; void* dnskey_rrset; void* ds_rrset; } ;


 int LDNS_RR_TYPE_DNSKEY ;
 int LDNS_RR_TYPE_DS ;
 void* assemble_it (struct trust_anchor*,scalar_t__,int ) ;

__attribute__((used)) static int
anchors_assemble(struct trust_anchor* ta)
{
 if(ta->numDS > 0) {
  ta->ds_rrset = assemble_it(ta, ta->numDS, LDNS_RR_TYPE_DS);
  if(!ta->ds_rrset)
   return 0;
 }
 if(ta->numDNSKEY > 0) {
  ta->dnskey_rrset = assemble_it(ta, ta->numDNSKEY,
   LDNS_RR_TYPE_DNSKEY);
  if(!ta->dnskey_rrset)
   return 0;
 }
 return 1;
}
