
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_CLASS ;
 scalar_t__ sldns_get_rr_class_by_name (char const*) ;
 int sldns_write_uint16 (int *,scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;

int sldns_str2wire_class_buf(const char* str, uint8_t* rd, size_t* len)
{
 uint16_t c = sldns_get_rr_class_by_name(str);
 if(c == 0 && strcmp(str, "CLASS0") != 0)
  return LDNS_WIREPARSE_ERR_SYNTAX_CLASS;
 if(*len < 2)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 sldns_write_uint16(rd, c);
 *len = 2;
 return LDNS_WIREPARSE_ERR_OK;
}
