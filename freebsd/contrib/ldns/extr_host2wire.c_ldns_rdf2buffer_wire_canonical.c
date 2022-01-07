
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 scalar_t__ LDNS_DNAME_NORMALIZE (int) ;
 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 scalar_t__ ldns_buffer_reserve (int *,size_t) ;
 int ldns_buffer_status (int *) ;
 int ldns_buffer_write (int *,scalar_t__*,size_t) ;
 int ldns_buffer_write_u8 (int *,scalar_t__) ;
 scalar_t__* ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 size_t ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_wire_canonical(ldns_buffer *buffer, const ldns_rdf *rdf)
{
 size_t i;
 uint8_t *rdf_data;

 if (ldns_rdf_get_type(rdf) == LDNS_RDF_TYPE_DNAME) {
  if (ldns_buffer_reserve(buffer, ldns_rdf_size(rdf))) {
   rdf_data = ldns_rdf_data(rdf);
   for (i = 0; i < ldns_rdf_size(rdf); i++) {
    ldns_buffer_write_u8(buffer,
        (uint8_t) LDNS_DNAME_NORMALIZE((int)rdf_data[i]));
   }
  }
 } else {

  if (ldns_buffer_reserve(buffer, ldns_rdf_size(rdf))) {
   ldns_buffer_write(buffer,
         ldns_rdf_data(rdf),
         ldns_rdf_size(rdf));
  }
 }
 return ldns_buffer_status(buffer);
}
