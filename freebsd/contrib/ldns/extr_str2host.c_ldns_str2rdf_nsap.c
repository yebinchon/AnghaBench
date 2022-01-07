
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;


 int LDNS_STATUS_INVALID_STR ;
 int ldns_str2rdf_hex (int **,char const*) ;
 size_t strlen (char const*) ;

ldns_status
ldns_str2rdf_nsap(ldns_rdf **rd, const char *str)
{
    size_t len, i;
    char* nsap_str = (char*) str;


 if (str[0] != '0' || str[1] != 'x') {
  return LDNS_STATUS_INVALID_STR;
 } else {
  len = strlen(str);
  for (i=0; i < len; i++) {
   if (nsap_str[i] == '.')
    nsap_str[i] = ' ';
        }
  return ldns_str2rdf_hex(rd, str+2);
 }
}
