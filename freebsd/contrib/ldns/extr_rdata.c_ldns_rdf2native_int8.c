
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_rdf ;
typedef int data ;


 scalar_t__ LDNS_RDF_SIZE_BYTE ;
 int ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_size (int const*) ;
 int memcpy (int *,int ,int) ;

uint8_t
ldns_rdf2native_int8(const ldns_rdf *rd)
{
 uint8_t data;


 if (ldns_rdf_size(rd) != LDNS_RDF_SIZE_BYTE) {
  return 0;
 }

 memcpy(&data, ldns_rdf_data(rd), sizeof(data));
 return data;
}
