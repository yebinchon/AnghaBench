
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_DNAME_NORMALIZE (int) ;
 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 scalar_t__ ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 scalar_t__ ldns_rdf_size (int const*) ;

void
ldns_dname2canonical(const ldns_rdf *rd)
{
 uint8_t *rdd;
 uint16_t i;

 if (ldns_rdf_get_type(rd) != LDNS_RDF_TYPE_DNAME) {
  return;
 }

 rdd = (uint8_t*)ldns_rdf_data(rd);
 for (i = 0; i < ldns_rdf_size(rd); i++, rdd++) {
  *rdd = (uint8_t)LDNS_DNAME_NORMALIZE((int)*rdd);
 }
}
