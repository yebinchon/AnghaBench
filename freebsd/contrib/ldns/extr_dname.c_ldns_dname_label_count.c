
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 size_t* ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 size_t ldns_rdf_size (int const*) ;

uint8_t
ldns_dname_label_count(const ldns_rdf *r)
{
        uint16_t src_pos;
        uint16_t len;
        uint8_t i;
        size_t r_size;

 if (!r) {
  return 0;
 }

 i = 0;
 src_pos = 0;
 r_size = ldns_rdf_size(r);

 if (ldns_rdf_get_type(r) != LDNS_RDF_TYPE_DNAME) {
  return 0;
 } else {
  len = ldns_rdf_data(r)[src_pos];


  if (1 == r_size) {
   return 0;
  } else {
   while ((len > 0) && src_pos < r_size) {
    src_pos++;
    src_pos += len;
    len = ldns_rdf_data(r)[src_pos];
    i++;
   }
  }
 }
 return i;
}
