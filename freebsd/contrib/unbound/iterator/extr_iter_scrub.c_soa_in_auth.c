
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrset_parse {scalar_t__ type; scalar_t__ section; struct rrset_parse* rrset_all_next; } ;
struct msg_parse {struct rrset_parse* rrset_first; } ;


 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_SECTION_AUTHORITY ;

__attribute__((used)) static int
soa_in_auth(struct msg_parse* msg)
{
 struct rrset_parse* rrset;
 for(rrset = msg->rrset_first; rrset; rrset = rrset->rrset_all_next)
  if(rrset->type == LDNS_RR_TYPE_SOA &&
   rrset->section == LDNS_SECTION_AUTHORITY)
   return 1;
 return 0;
}
