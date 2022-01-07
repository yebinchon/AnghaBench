
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 scalar_t__ inet_ntop (int ,int ,char*,int) ;
 int ldns_buffer_printf (int *,char*,char*) ;
 int ldns_buffer_status (int *) ;
 int ldns_rdf_data (int const*) ;

ldns_status
ldns_rdf2buffer_str_aaaa(ldns_buffer *output, const ldns_rdf *rdf)
{
 char str[INET6_ADDRSTRLEN];

 if (inet_ntop(AF_INET6, ldns_rdf_data(rdf), str, INET6_ADDRSTRLEN)) {
  ldns_buffer_printf(output, "%s", str);
 }

 return ldns_buffer_status(output);
}
