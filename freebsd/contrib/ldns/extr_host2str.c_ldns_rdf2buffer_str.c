
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int ldns_output_format_default ;
 int ldns_rdf2buffer_str_fmt (int *,int ,int const*) ;

ldns_status
ldns_rdf2buffer_str(ldns_buffer *buffer, const ldns_rdf *rdf)
{
 return ldns_rdf2buffer_str_fmt(buffer,ldns_output_format_default,rdf);
}
