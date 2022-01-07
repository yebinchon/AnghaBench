
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;


 int ldns_rdf_compare (int ,int ) ;
 int ldns_rr_owner (int const*) ;

int
qsort_rr_compare_nsec3(const void *a, const void *b)
{
 const ldns_rr *rr1 = * (const ldns_rr **) a;
 const ldns_rr *rr2 = * (const ldns_rr **) b;
 if (rr1 == ((void*)0) && rr2 == ((void*)0)) {
  return 0;
 }
 if (rr1 == ((void*)0)) {
  return -1;
 }
 if (rr2 == ((void*)0)) {
  return 1;
 }
 return ldns_rdf_compare(ldns_rr_owner(rr1), ldns_rr_owner(rr2));
}
