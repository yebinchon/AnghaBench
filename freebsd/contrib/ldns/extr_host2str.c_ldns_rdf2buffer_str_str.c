
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int LDNS_STATUS_WIRE_RDATA_ERR ;
 int ldns_buffer_printf (int *,char*) ;
 int ldns_buffer_status (int *) ;
 int ldns_characters2buffer_str (int *,scalar_t__,scalar_t__*) ;
 scalar_t__* ldns_rdf_data (int const*) ;
 int ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_str_str(ldns_buffer *output, const ldns_rdf *rdf)
{
        if(ldns_rdf_size(rdf) < 1) {
                return LDNS_STATUS_WIRE_RDATA_ERR;
        }
        if((int)ldns_rdf_size(rdf) < (int)ldns_rdf_data(rdf)[0] + 1) {
                return LDNS_STATUS_WIRE_RDATA_ERR;
        }
 ldns_buffer_printf(output, "\"");
 ldns_characters2buffer_str(output,
   ldns_rdf_data(rdf)[0], ldns_rdf_data(rdf) + 1);
 ldns_buffer_printf(output, "\"");
 return ldns_buffer_status(output);
}
