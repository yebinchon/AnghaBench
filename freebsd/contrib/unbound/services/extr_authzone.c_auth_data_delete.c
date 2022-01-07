
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_rrset {struct auth_rrset* next; } ;
struct auth_data {struct auth_data* name; struct auth_rrset* rrsets; } ;


 int auth_rrset_delete (struct auth_rrset*) ;
 int free (struct auth_data*) ;

__attribute__((used)) static void
auth_data_delete(struct auth_data* n)
{
 struct auth_rrset* p, *np;
 if(!n) return;
 p = n->rrsets;
 while(p) {
  np = p->next;
  auth_rrset_delete(p);
  p = np;
 }
 free(n->name);
 free(n);
}
