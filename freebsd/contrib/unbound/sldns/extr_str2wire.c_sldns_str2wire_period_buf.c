
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_PERIOD ;
 int RET_ERR (int ,int) ;
 int sldns_str2period (char const*,char const**) ;
 int sldns_write_uint32 (int *,int ) ;

int sldns_str2wire_period_buf(const char* str, uint8_t* rd, size_t* len)
{
 const char* end;
 uint32_t p = sldns_str2period(str, &end);
 if(*end != 0)
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_PERIOD, end-str);
 if(*len < 4)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 sldns_write_uint32(rd, p);
 *len = 4;
 return LDNS_WIREPARSE_ERR_OK;
}
