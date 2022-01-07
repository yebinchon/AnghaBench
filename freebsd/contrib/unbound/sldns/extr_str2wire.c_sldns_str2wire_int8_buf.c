
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_INT ;
 int RET_ERR (int ,int) ;
 int strtol (char*,char**,int) ;

int sldns_str2wire_int8_buf(const char* str, uint8_t* rd, size_t* len)
{
 char* end;
 uint8_t r = (uint8_t)strtol((char*)str, &end, 10);
 if(*end != 0)
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_INT, end-(char*)str);
 if(*len < 1)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 rd[0] = r;
 *len = 1;
 return LDNS_WIREPARSE_ERR_OK;
}
