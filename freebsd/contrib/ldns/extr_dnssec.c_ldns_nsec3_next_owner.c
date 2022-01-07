
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int * ldns_rr_rdf (int const*,int) ;

ldns_rdf *
ldns_nsec3_next_owner(const ldns_rr *nsec3_rr)
{
 if (!nsec3_rr || ldns_rr_get_type(nsec3_rr) != LDNS_RR_TYPE_NSEC3) {
  return ((void*)0);
 } else {
  return ldns_rr_rdf(nsec3_rr, 4);
 }
}
