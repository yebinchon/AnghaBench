
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_rr ;


 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ LDNS_RR_TYPE_NSEC3PARAM ;
 int ldns_rdf2native_int8 (int *) ;
 scalar_t__ ldns_rdf_size (int *) ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int * ldns_rr_rdf (int const*,int ) ;

uint8_t
ldns_nsec3_algorithm(const ldns_rr *nsec3_rr)
{
 if (nsec3_rr &&
       (ldns_rr_get_type(nsec3_rr) == LDNS_RR_TYPE_NSEC3 ||
        ldns_rr_get_type(nsec3_rr) == LDNS_RR_TYPE_NSEC3PARAM)
     && (ldns_rr_rdf(nsec3_rr, 0) != ((void*)0))
     && ldns_rdf_size(ldns_rr_rdf(nsec3_rr, 0)) > 0) {
  return ldns_rdf2native_int8(ldns_rr_rdf(nsec3_rr, 0));
 }
 return 0;
}
