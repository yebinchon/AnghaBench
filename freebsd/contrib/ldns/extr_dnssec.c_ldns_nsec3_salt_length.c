
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int * ldns_nsec3_salt (int const*) ;
 int * ldns_rdf_data (int *) ;
 scalar_t__ ldns_rdf_size (int *) ;

uint8_t
ldns_nsec3_salt_length(const ldns_rr *nsec3_rr)
{
 ldns_rdf *salt_rdf = ldns_nsec3_salt(nsec3_rr);
 if (salt_rdf && ldns_rdf_size(salt_rdf) > 0) {
  return (uint8_t) ldns_rdf_data(salt_rdf)[0];
 }
 return 0;
}
