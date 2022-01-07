
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct auth_rrset {scalar_t__ type; struct auth_rrset* next; } ;
struct auth_data {struct auth_rrset* rrsets; } ;



__attribute__((used)) static struct auth_rrset*
az_domain_rrset(struct auth_data* n, uint16_t t)
{
 struct auth_rrset* rrset;
 if(!n) return ((void*)0);
 rrset = n->rrsets;
 while(rrset) {
  if(rrset->type == t)
   return rrset;
  rrset = rrset->next;
 }
 return ((void*)0);
}
