
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,unsigned long) ;
 int ldns_buffer_status (int *) ;
 int ldns_rdf_data (int const*) ;
 scalar_t__ ldns_read_uint16 (int ) ;

ldns_status
ldns_rdf2buffer_str_int16(ldns_buffer *output, const ldns_rdf *rdf)
{
 uint16_t data = ldns_read_uint16(ldns_rdf_data(rdf));
 ldns_buffer_printf(output, "%lu", (unsigned long) data);
 return ldns_buffer_status(output);
}
