
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,int ) ;
 int ldns_buffer_status (int *) ;
 int * ldns_rdf_data (int const*) ;
 size_t ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_str_hex(ldns_buffer *output, const ldns_rdf *rdf)
{
 size_t i;
 for (i = 0; i < ldns_rdf_size(rdf); i++) {
  ldns_buffer_printf(output, "%02x", ldns_rdf_data(rdf)[i]);
 }

 return ldns_buffer_status(output);
}
