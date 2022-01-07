
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int LDNS_STATUS_WIRE_RDATA_ERR ;
 int isalnum (unsigned char) ;
 int ldns_buffer_printf (int *,char*,char) ;
 int ldns_buffer_status (int *) ;
 size_t* ldns_rdf_data (int const*) ;
 size_t ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_str_tag(ldns_buffer *output, const ldns_rdf *rdf)
{
 size_t nchars;
 const uint8_t* chars;
 char ch;
 if (ldns_rdf_size(rdf) < 2) {
  return LDNS_STATUS_WIRE_RDATA_ERR;
 }
 nchars = ldns_rdf_data(rdf)[0];
 if (nchars >= ldns_rdf_size(rdf) ||
   nchars < 1) {
  return LDNS_STATUS_WIRE_RDATA_ERR;
 }
 chars = ldns_rdf_data(rdf) + 1;
 while (nchars > 0) {
  ch = (char)*chars++;
  if (! isalnum((unsigned char)ch)) {
   return LDNS_STATUS_WIRE_RDATA_ERR;
  }
  ldns_buffer_printf(output, "%c", ch);
  nchars--;
 }
 return ldns_buffer_status(output);
}
