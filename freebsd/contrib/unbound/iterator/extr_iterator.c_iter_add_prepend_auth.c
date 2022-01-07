
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;
struct module_qstate {int region; } ;
struct iter_qstate {struct iter_prep_list* ns_prepend_last; struct iter_prep_list* ns_prepend_list; } ;
struct iter_prep_list {struct iter_prep_list* next; struct ub_packed_rrset_key* rrset; } ;


 scalar_t__ regional_alloc (int ,int) ;

__attribute__((used)) static int
iter_add_prepend_auth(struct module_qstate* qstate, struct iter_qstate* iq,
 struct ub_packed_rrset_key* rrset)
{
 struct iter_prep_list* p = (struct iter_prep_list*)regional_alloc(
  qstate->region, sizeof(struct iter_prep_list));
 if(!p)
  return 0;
 p->rrset = rrset;
 p->next = ((void*)0);

 if(iq->ns_prepend_last)
  iq->ns_prepend_last->next = p;
 else iq->ns_prepend_list = p;
 iq->ns_prepend_last = p;
 return 1;
}
