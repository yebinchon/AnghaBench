
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;
struct reply_info {scalar_t__ flags; scalar_t__ qdcount; scalar_t__ security; scalar_t__ an_numrrsets; scalar_t__ ns_numrrsets; scalar_t__ ar_numrrsets; int rrset_count; int rrsets; } ;
struct regional {int dummy; } ;


 int log_assert (int) ;
 int qsort (struct ub_packed_rrset_key**,scalar_t__,int,int ) ;
 scalar_t__ regional_alloc_init (struct regional*,int ,int) ;
 int regional_free_all (struct regional*) ;
 int rrset_canonical_equal (struct regional*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*) ;
 int rrset_canonical_sort_cmp ;
 int rrset_equal (struct ub_packed_rrset_key*,struct ub_packed_rrset_key*) ;

int
reply_equal(struct reply_info* p, struct reply_info* q, struct regional* region)
{
 size_t i;
 struct ub_packed_rrset_key** sorted_p, **sorted_q;
 if(p->flags != q->flags ||
  p->qdcount != q->qdcount ||





  p->security != q->security ||
  p->an_numrrsets != q->an_numrrsets ||
  p->ns_numrrsets != q->ns_numrrsets ||
  p->ar_numrrsets != q->ar_numrrsets ||
  p->rrset_count != q->rrset_count)
  return 0;



 sorted_p = (struct ub_packed_rrset_key**)regional_alloc_init(
  region, p->rrsets, sizeof(*sorted_p)*p->rrset_count);
 if(!sorted_p) return 0;
 log_assert(p->an_numrrsets + p->ns_numrrsets + p->ar_numrrsets <=
  p->rrset_count);
 qsort(sorted_p + p->an_numrrsets, p->ns_numrrsets,
  sizeof(*sorted_p), rrset_canonical_sort_cmp);
 qsort(sorted_p + p->an_numrrsets + p->ns_numrrsets, p->ar_numrrsets,
  sizeof(*sorted_p), rrset_canonical_sort_cmp);

 sorted_q = (struct ub_packed_rrset_key**)regional_alloc_init(
  region, q->rrsets, sizeof(*sorted_q)*q->rrset_count);
 if(!sorted_q) {
  regional_free_all(region);
  return 0;
 }
 log_assert(q->an_numrrsets + q->ns_numrrsets + q->ar_numrrsets <=
  q->rrset_count);
 qsort(sorted_q + q->an_numrrsets, q->ns_numrrsets,
  sizeof(*sorted_q), rrset_canonical_sort_cmp);
 qsort(sorted_q + q->an_numrrsets + q->ns_numrrsets, q->ar_numrrsets,
  sizeof(*sorted_q), rrset_canonical_sort_cmp);


 for(i=0; i<p->rrset_count; i++) {
  if(!rrset_equal(sorted_p[i], sorted_q[i])) {
   if(!rrset_canonical_equal(region, sorted_p[i],
    sorted_q[i])) {
    regional_free_all(region);
    return 0;
   }
  }
 }
 regional_free_all(region);
 return 1;
}
