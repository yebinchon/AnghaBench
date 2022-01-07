
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int AF_INET ;
 int INET_ADDRSTRLEN ;
 scalar_t__ inet_ntop (int ,int ,char*,int) ;
 int ldns_buffer_printf (int *,char*,char*) ;
 int ldns_buffer_status (int *) ;
 int ldns_rdf_data (int const*) ;

ldns_status
ldns_rdf2buffer_str_a(ldns_buffer *output, const ldns_rdf *rdf)
{
 char str[INET_ADDRSTRLEN];

 if (inet_ntop(AF_INET, ldns_rdf_data(rdf), str, INET_ADDRSTRLEN)) {
  ldns_buffer_printf(output, "%s", str);
 }
 return ldns_buffer_status(output);
}
