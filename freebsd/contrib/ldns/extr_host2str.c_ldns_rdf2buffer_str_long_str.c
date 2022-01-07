
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*) ;
 int ldns_buffer_status (int *) ;
 int ldns_characters2buffer_str (int *,int ,int ) ;
 int ldns_rdf_data (int const*) ;
 int ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_str_long_str(ldns_buffer *output, const ldns_rdf *rdf)
{

 ldns_buffer_printf(output, "\"");
 ldns_characters2buffer_str(output,
   ldns_rdf_size(rdf), ldns_rdf_data(rdf));
 ldns_buffer_printf(output, "\"");
 return ldns_buffer_status(output);
}
