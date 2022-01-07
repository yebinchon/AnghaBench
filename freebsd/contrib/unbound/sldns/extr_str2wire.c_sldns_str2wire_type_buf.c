
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_TYPE ;
 scalar_t__ sldns_get_rr_type_by_name (char const*) ;
 int sldns_write_uint16 (int *,scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;

int sldns_str2wire_type_buf(const char* str, uint8_t* rd, size_t* len)
{
 uint16_t t = sldns_get_rr_type_by_name(str);
 if(t == 0 && strcmp(str, "TYPE0") != 0)
  return LDNS_WIREPARSE_ERR_SYNTAX_TYPE;
 if(*len < 2)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 sldns_write_uint16(rd, t);
 *len = 2;
 return LDNS_WIREPARSE_ERR_OK;
}
