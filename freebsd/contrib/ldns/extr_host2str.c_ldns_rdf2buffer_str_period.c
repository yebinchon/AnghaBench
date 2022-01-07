
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int LDNS_STATUS_WIRE_RDATA_ERR ;
 int ldns_buffer_printf (int *,char*,int ) ;
 int ldns_buffer_status (int *) ;
 int ldns_rdf_data (int const*) ;
 int ldns_rdf_size (int const*) ;
 int ldns_read_uint32 (int ) ;

ldns_status
ldns_rdf2buffer_str_period(ldns_buffer *output, const ldns_rdf *rdf)
{

 if (ldns_rdf_size(rdf) != 4) {
  return LDNS_STATUS_WIRE_RDATA_ERR;
 }
 ldns_buffer_printf(output, "%u", ldns_read_uint32(ldns_rdf_data(rdf)));
 return ldns_buffer_status(output);
}
