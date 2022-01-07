
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_packed_rrset_key {int dummy; } ;
struct packed_rrset_data {size_t count; } ;
struct TYPE_2__ {struct canon_rr* key; } ;
struct canon_rr {size_t rr_idx; TYPE_1__ node; struct ub_packed_rrset_key* rrset; } ;
typedef int rbtree_type ;


 int rbtree_insert (int *,TYPE_1__*) ;

__attribute__((used)) static void
canonical_sort(struct ub_packed_rrset_key* rrset, struct packed_rrset_data* d,
 rbtree_type* sortree, struct canon_rr* rrs)
{
 size_t i;

 for(i=0; i<d->count; i++) {
  rrs[i].node.key = &rrs[i];
  rrs[i].rrset = rrset;
  rrs[i].rr_idx = i;
  if(!rbtree_insert(sortree, &rrs[i].node)) {

  }
 }
}
