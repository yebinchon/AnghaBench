
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint16_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_HIP ;
 int LDNS_STATUS_INVALID_POINTER ;
 int LDNS_STATUS_INVALID_RDF_TYPE ;
 int LDNS_STATUS_OK ;
 int LDNS_STATUS_WIRE_RDATA_ERR ;
 int* ldns_rdf_data (int *) ;
 scalar_t__ ldns_rdf_get_type (int *) ;
 size_t ldns_rdf_size (int *) ;
 size_t ldns_read_uint16 (int*) ;

ldns_status
ldns_rdf_hip_get_alg_hit_pk(ldns_rdf *rdf, uint8_t* alg,
                            uint8_t *hit_size, uint8_t** hit,
                            uint16_t *pk_size, uint8_t** pk)
{
 uint8_t *data;
 size_t rdf_size;

 if (! rdf || ! alg || ! hit || ! hit_size || ! pk || ! pk_size) {
  return LDNS_STATUS_INVALID_POINTER;
 } else if (ldns_rdf_get_type(rdf) != LDNS_RDF_TYPE_HIP) {
  return LDNS_STATUS_INVALID_RDF_TYPE;
 } else if ((rdf_size = ldns_rdf_size(rdf)) < 6) {
  return LDNS_STATUS_WIRE_RDATA_ERR;
 }
 data = ldns_rdf_data(rdf);
 *hit_size = data[0];
 *alg = data[1];
 *pk_size = ldns_read_uint16(data + 2);
 *hit = data + 4;
 *pk = data + 4 + *hit_size;
 if (*hit_size == 0 || *pk_size == 0 ||
   rdf_size < (size_t) *hit_size + *pk_size + 4) {
  return LDNS_STATUS_WIRE_RDATA_ERR;
 }
 return LDNS_STATUS_OK;
}
