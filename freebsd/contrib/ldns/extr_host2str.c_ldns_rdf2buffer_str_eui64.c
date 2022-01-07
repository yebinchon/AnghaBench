
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int LDNS_STATUS_WIRE_RDATA_ERR ;
 int ldns_buffer_printf (int *,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ldns_buffer_status (int *) ;
 int * ldns_rdf_data (int const*) ;
 int ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_str_eui64(ldns_buffer *output, const ldns_rdf *rdf)
{
 if (ldns_rdf_size(rdf) != 8) {
  return LDNS_STATUS_WIRE_RDATA_ERR;
 }
 ldns_buffer_printf(output,"%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x",
    ldns_rdf_data(rdf)[0], ldns_rdf_data(rdf)[1],
    ldns_rdf_data(rdf)[2], ldns_rdf_data(rdf)[3],
    ldns_rdf_data(rdf)[4], ldns_rdf_data(rdf)[5],
    ldns_rdf_data(rdf)[6], ldns_rdf_data(rdf)[7]);
 return ldns_buffer_status(output);
}
