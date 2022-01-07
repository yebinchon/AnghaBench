
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int LDNS_STATUS_WIRE_RDATA_ERR ;
 int ldns_buffer_printf (int *,char*,int ,int ,int ,int ) ;
 int ldns_buffer_status (int *) ;
 scalar_t__ ldns_rdf_data (int const*) ;
 int ldns_rdf_size (int const*) ;
 int ldns_read_uint16 (scalar_t__) ;

ldns_status
ldns_rdf2buffer_str_ilnp64(ldns_buffer *output, const ldns_rdf *rdf)
{
 if (ldns_rdf_size(rdf) != 8) {
  return LDNS_STATUS_WIRE_RDATA_ERR;
 }
 ldns_buffer_printf(output,"%.4x:%.4x:%.4x:%.4x",
    ldns_read_uint16(ldns_rdf_data(rdf)),
    ldns_read_uint16(ldns_rdf_data(rdf)+2),
    ldns_read_uint16(ldns_rdf_data(rdf)+4),
    ldns_read_uint16(ldns_rdf_data(rdf)+6));
 return ldns_buffer_status(output);
}
