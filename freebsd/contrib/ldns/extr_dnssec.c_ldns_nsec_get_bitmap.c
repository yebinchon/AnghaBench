
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int * ldns_rr_rdf (int const*,int) ;

ldns_rdf *
ldns_nsec_get_bitmap(const ldns_rr *nsec) {
 if (ldns_rr_get_type(nsec) == LDNS_RR_TYPE_NSEC) {
  return ldns_rr_rdf(nsec, 1);
 } else if (ldns_rr_get_type(nsec) == LDNS_RR_TYPE_NSEC3) {
  return ldns_rr_rdf(nsec, 5);
 } else {
  return ((void*)0);
 }
}
