
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_rbtree_t ;
typedef int ldns_buffer ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 scalar_t__ ldns_buffer_reserve (int *,int ) ;
 int ldns_buffer_status (int *) ;
 int ldns_buffer_write (int *,int ,int ) ;
 int ldns_dname2buffer_wire_compress (int *,int const*,int *) ;
 int ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_wire_compress(ldns_buffer *buffer, const ldns_rdf *rdf, ldns_rbtree_t *compression_data)
{

 if(compression_data && ldns_rdf_get_type(rdf) == LDNS_RDF_TYPE_DNAME)
 {
  return ldns_dname2buffer_wire_compress(buffer,rdf,compression_data);
 }

 if (ldns_buffer_reserve(buffer, ldns_rdf_size(rdf))) {
  ldns_buffer_write(buffer, ldns_rdf_data(rdf), ldns_rdf_size(rdf));
 }
 return ldns_buffer_status(buffer);
}
