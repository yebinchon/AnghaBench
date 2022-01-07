
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 size_t LDNS_MAX_DOMAINLEN ;
 int LDNS_STATUS_DOMAINNAME_OVERFLOW ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isgraph (unsigned char) ;
 int ldns_buffer_printf (int *,char*,...) ;
 int ldns_buffer_status (int *) ;
 scalar_t__ ldns_rdf_data (int const*) ;
 size_t ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_str_dname(ldns_buffer *output, const ldns_rdf *dname)
{

 uint8_t src_pos = 0;
 uint8_t len;
 uint8_t *data;
 uint8_t i;
 unsigned char c;

 data = (uint8_t*)ldns_rdf_data(dname);
 len = data[src_pos];

 if (ldns_rdf_size(dname) > LDNS_MAX_DOMAINLEN) {

  return LDNS_STATUS_DOMAINNAME_OVERFLOW;
 }


 if (1 == ldns_rdf_size(dname)) {
  ldns_buffer_printf(output, ".");
 } else {
  while ((len > 0) && src_pos < ldns_rdf_size(dname)) {
   src_pos++;
   for(i = 0; i < len; i++) {



    c = (unsigned char) data[src_pos];
    if(c == '.' || c == ';' ||
       c == '(' || c == ')' ||
       c == '\\') {
     ldns_buffer_printf(output, "\\%c",
       data[src_pos]);
    } else if (!(isascii(c) && isgraph(c))) {
     ldns_buffer_printf(output, "\\%03u",
              data[src_pos]);
    } else {
     ldns_buffer_printf(output, "%c", data[src_pos]);
    }
    src_pos++;
   }

   if (src_pos < ldns_rdf_size(dname)) {
    ldns_buffer_printf(output, ".");
   }
   len = data[src_pos];
  }
 }
 return ldns_buffer_status(output);
}
