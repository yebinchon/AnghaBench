
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;
typedef int sldns_buffer ;


 size_t LDNS_MAX_RDFLEN ;
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_GENERAL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_RDATA ;
 int RET_ERR (int ,scalar_t__) ;
 int RET_ERR_SHIFT (int,scalar_t__) ;
 scalar_t__ atoi (char*) ;
 int rrinternal_spool_hex (char*,int *,size_t,size_t,size_t*,size_t) ;
 int sldns_bget_token (int *,char*,char const*,size_t) ;
 scalar_t__ sldns_buffer_position (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
rrinternal_parse_unknown(sldns_buffer* strbuf, char* token, size_t token_len,
        uint8_t* rr, size_t* rr_len, size_t* rr_cur_len, size_t pre_data_pos)
{
 const char* delim = "\n\t ";
 size_t hex_data_size, cur_hex_data_size;



 sldns_buffer_set_position(strbuf, pre_data_pos);
 if(sldns_bget_token(strbuf, token, delim, token_len) == -1)
  return LDNS_WIREPARSE_ERR_GENERAL;

 if(sldns_bget_token(strbuf, token, delim, token_len) == -1) {

  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_RDATA,
   sldns_buffer_position(strbuf));
 }
 hex_data_size = (size_t)atoi(token);
 if(hex_data_size > LDNS_MAX_RDFLEN ||
  *rr_cur_len + hex_data_size > *rr_len) {
  return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
   sldns_buffer_position(strbuf));
 }

 hex_data_size *= 2;
 cur_hex_data_size = 0;
 while(cur_hex_data_size < hex_data_size) {
  int status;
  ssize_t c = sldns_bget_token(strbuf, token, delim, token_len);
  if((status = rrinternal_spool_hex(token, rr, *rr_len,
   *rr_cur_len, &cur_hex_data_size, hex_data_size)) != 0)
   return RET_ERR_SHIFT(status,
    sldns_buffer_position(strbuf)-strlen(token));
  if(c == -1) {
   if(cur_hex_data_size != hex_data_size)
    return RET_ERR(
     LDNS_WIREPARSE_ERR_SYNTAX_RDATA,
     sldns_buffer_position(strbuf));
   break;
  }
 }
 *rr_cur_len += hex_data_size/2;
 return LDNS_WIREPARSE_ERR_OK;
}
