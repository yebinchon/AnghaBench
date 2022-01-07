
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct canon_rr {scalar_t__ rrset; int rr_idx; } ;


 int canonical_compare (scalar_t__,int ,int ) ;
 int log_assert (int) ;

int
canonical_tree_compare(const void* k1, const void* k2)
{
 struct canon_rr* r1 = (struct canon_rr*)k1;
 struct canon_rr* r2 = (struct canon_rr*)k2;
 log_assert(r1->rrset == r2->rrset);
 return canonical_compare(r1->rrset, r1->rr_idx, r2->rr_idx);
}
