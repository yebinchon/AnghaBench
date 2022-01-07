
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_HEX ;
 int RET_ERR (int ,int) ;
 scalar_t__ isspace (unsigned char) ;
 int isxdigit (unsigned char) ;
 scalar_t__ sldns_hexdigit_to_int (int ) ;
 scalar_t__ sldns_is_last_of_string (char const*) ;

int sldns_str2wire_hex_buf(const char* str, uint8_t* rd, size_t* len)
{
 const char* s = str;
 size_t dlen = 0;
 while(*s) {
  if(isspace((unsigned char)*s)) {
   s++;
   continue;
  }
  if(dlen == 0 && *s == '0' && sldns_is_last_of_string(s+1)) {
   *len = 0;
   return LDNS_WIREPARSE_ERR_OK;
  }
  if(!isxdigit((unsigned char)*s))
   return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_HEX, s-str);
  if(*len < dlen/2 + 1)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
    s-str);
  if((dlen&1)==0)
   rd[dlen/2] = (uint8_t)sldns_hexdigit_to_int(*s++) * 16;
  else rd[dlen/2] += (uint8_t)sldns_hexdigit_to_int(*s++);
  dlen++;
 }
 if((dlen&1)!=0)
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_HEX, s-str);
 *len = dlen/2;
 return LDNS_WIREPARSE_ERR_OK;
}
