
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_LABEL_OVERFLOW ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_B64 ;
 int LDNS_WIREPARSE_ERR_SYNTAX_INT ;
 int RET_ERR (int ,int) ;
 int sldns_b64_pton (char*,int *,size_t) ;
 int sldns_write_uint16 (int *,int ) ;
 int strtol (char const*,char**,int) ;

int sldns_str2wire_int16_data_buf(const char* str, uint8_t* rd, size_t* len)
{
 char* s;
 int n;
 n = strtol(str, &s, 10);
 if(*len < ((size_t)n)+2)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 if(n > 65535)
  return LDNS_WIREPARSE_ERR_LABEL_OVERFLOW;

 if(n == 0) {
  sldns_write_uint16(rd, 0);
  *len = 2;
  return LDNS_WIREPARSE_ERR_OK;
 }
 if(*s != ' ')
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_INT, s-(char*)str);
 s++;
 while(*s == ' ')
  s++;

 n = sldns_b64_pton(s, rd+2, (*len)-2);
 if(n < 0)
  return LDNS_WIREPARSE_ERR_SYNTAX_B64;
 sldns_write_uint16(rd, (uint16_t)n);
 *len = ((size_t)n)+2;
 return LDNS_WIREPARSE_ERR_OK;
}
