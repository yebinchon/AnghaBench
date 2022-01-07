
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_rrset {scalar_t__ type; struct auth_rrset* next; } ;
struct auth_data {struct auth_rrset* rrsets; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;

__attribute__((used)) static int
domain_has_only_nsec3(struct auth_data* n)
{
 struct auth_rrset* rrset = n->rrsets;
 int nsec3_seen = 0;
 while(rrset) {
  if(rrset->type == LDNS_RR_TYPE_NSEC3) {
   nsec3_seen = 1;
  } else if(rrset->type != LDNS_RR_TYPE_RRSIG) {
   return 0;
  }
  rrset = rrset->next;
 }
 return nsec3_seen;
}
