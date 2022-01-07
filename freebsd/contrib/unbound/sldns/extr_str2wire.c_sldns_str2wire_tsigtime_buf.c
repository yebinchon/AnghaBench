
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_TIME ;
 int RET_ERR (int ,int) ;
 int sldns_write_uint16 (int *,scalar_t__) ;
 int sldns_write_uint32 (int *,scalar_t__) ;
 int strtol (char*,char**,int) ;

int sldns_str2wire_tsigtime_buf(const char* str, uint8_t* rd, size_t* len)
{
 char* end;
 uint64_t t = (uint64_t)strtol((char*)str, &end, 10);
 uint16_t high;
 uint32_t low;
 if(*end != 0)
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_TIME, end-str);
 if(*len < 6)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 high = (uint16_t)(t>>32);
 low = (uint32_t)(t);
 sldns_write_uint16(rd, high);
 sldns_write_uint32(rd+2, low);
 *len = 6;
 return LDNS_WIREPARSE_ERR_OK;
}
