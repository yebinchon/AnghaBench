
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_RDATA ;
 int RET_ERR (int ,int) ;
 scalar_t__ isspace (unsigned char) ;
 int isxdigit (unsigned char) ;
 scalar_t__ sldns_hexdigit_to_int (char) ;

__attribute__((used)) static int
rrinternal_spool_hex(char* token, uint8_t* rr, size_t rr_len,
 size_t rr_cur_len, size_t* cur_hex_data_size, size_t hex_data_size)
{
 char* p = token;
 while(*p) {
  if(isspace((unsigned char)*p)) {
   p++;
   continue;
  }
  if(!isxdigit((unsigned char)*p))
   return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_RDATA,
    p-token);
  if(*cur_hex_data_size >= hex_data_size)
   return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_RDATA,
    p-token);

  if(rr_cur_len+(*cur_hex_data_size)/2 >= rr_len)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
    p-token);

  if( ((*cur_hex_data_size)&1) == 0) {
   rr[rr_cur_len+(*cur_hex_data_size)/2] =
    (uint8_t)sldns_hexdigit_to_int(*p)*16;
  } else {
   rr[rr_cur_len+(*cur_hex_data_size)/2] +=
    (uint8_t)sldns_hexdigit_to_int(*p);
  }
  p++;
  (*cur_hex_data_size)++;
 }
 return LDNS_WIREPARSE_ERR_OK;
}
