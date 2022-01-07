
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct auth_rrset {scalar_t__ type; struct auth_rrset* next; } ;
struct auth_data {struct auth_rrset* rrsets; } ;


 int auth_rrset_delete (struct auth_rrset*) ;

__attribute__((used)) static void
domain_remove_rrset(struct auth_data* node, uint16_t rr_type)
{
 struct auth_rrset* rrset, *prev;
 if(!node) return;
 prev = ((void*)0);
 rrset = node->rrsets;
 while(rrset) {
  if(rrset->type == rr_type) {

   if(prev) prev->next = rrset->next;
   else node->rrsets = rrset->next;
   auth_rrset_delete(rrset);
   return;
  }
  prev = rrset;
  rrset = rrset->next;
 }
}
