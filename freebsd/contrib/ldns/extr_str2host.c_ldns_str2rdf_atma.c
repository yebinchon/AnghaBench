
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_str2rdf_hex (int **,char const*) ;
 size_t strlen (char const*) ;

ldns_status
ldns_str2rdf_atma(ldns_rdf **rd, const char *str)
{
    size_t len, i;
    char* atma_str = (char*) str;
 ldns_status status;


 len = strlen(str);
 for (i=0; i < len; i++) {
  if (atma_str[i] == '.')
   atma_str[i] = ' ';
 }
 status = ldns_str2rdf_hex(rd, str);
    if (status != LDNS_STATUS_OK) {
  ;
 }
 return status;
}
