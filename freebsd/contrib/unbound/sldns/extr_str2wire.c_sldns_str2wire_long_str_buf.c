
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE ;
 scalar_t__ sldns_parse_char (int *,char const**) ;

int sldns_str2wire_long_str_buf(const char* str, uint8_t* rd, size_t* len)
{
 uint8_t ch = 0;
 const char* pstr = str;
 size_t length = 0;


 while (sldns_parse_char(&ch, &pstr)) {
  if(*len < length+1)
   return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
  rd[length++] = ch;
 }
 if(!pstr)
  return LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE;
 *len = length;
 return LDNS_WIREPARSE_ERR_OK;
}
