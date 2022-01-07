
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_B64 ;
 int sldns_b64_pton (char const*,int *,size_t) ;
 size_t sldns_b64_pton_calculate_size (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

int sldns_str2wire_b64_buf(const char* str, uint8_t* rd, size_t* len)
{
 size_t sz = sldns_b64_pton_calculate_size(strlen(str));
 int n;
 if(strcmp(str, "0") == 0) {
  *len = 0;
  return LDNS_WIREPARSE_ERR_OK;
 }
 if(*len < sz)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 n = sldns_b64_pton(str, rd, *len);
 if(n < 0)
  return LDNS_WIREPARSE_ERR_SYNTAX_B64;
 *len = (size_t)n;
 return LDNS_WIREPARSE_ERR_OK;
}
