
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ ERANGE ;
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_INT ;
 int LDNS_WIREPARSE_ERR_SYNTAX_INTEGER_OVERFLOW ;
 int RET_ERR (int ,int) ;
 scalar_t__ errno ;
 int sldns_write_uint32 (int *,scalar_t__) ;
 scalar_t__ strtol (char*,char**,int) ;
 scalar_t__ strtoul (char*,char**,int) ;

int sldns_str2wire_int32_buf(const char* str, uint8_t* rd, size_t* len)
{
 char* end;
 uint32_t r;
 errno = 0;

 if(*str == '-')
  r = (uint32_t)strtol((char*)str, &end, 10);
 else r = (uint32_t)strtoul((char*)str, &end, 10);
 if(*end != 0)
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_INT, end-(char*)str);
 if(errno == ERANGE)
  return LDNS_WIREPARSE_ERR_SYNTAX_INTEGER_OVERFLOW;
 if(*len < 4)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 sldns_write_uint32(rd, r);
 *len = 4;
 return LDNS_WIREPARSE_ERR_OK;
}
