
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int ldns_rdf2buffer_str_hex (int *,int const*) ;

ldns_status
ldns_rdf2buffer_str_atma(ldns_buffer *output, const ldns_rdf *rdf)
{
 return ldns_rdf2buffer_str_hex(output, rdf);
}
