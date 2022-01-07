
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX ;
 int RET_ERR (int ,scalar_t__) ;
 int RET_ERR_SHIFT (int,scalar_t__) ;
 int memmove (int *,int *,size_t) ;
 int sldns_bget_token (int *,char*,char*,size_t) ;
 scalar_t__ sldns_buffer_position (int *) ;
 int sldns_str2wire_dname_buf_origin (char*,int *,size_t*,int *,size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
rrinternal_get_owner(sldns_buffer* strbuf, uint8_t* rr, size_t* len,
 size_t* dname_len, uint8_t* origin, size_t origin_len, uint8_t* prev,
 size_t prev_len, char* token, size_t token_len)
{

 if(sldns_bget_token(strbuf, token, "\t\n ", token_len) == -1) {
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX,
   sldns_buffer_position(strbuf));
 }

 if(strcmp(token, "@") == 0) {
  uint8_t* tocopy;
  if (origin) {
   *dname_len = origin_len;
   tocopy = origin;
  } else if (prev) {
   *dname_len = prev_len;
   tocopy = prev;
  } else {

   *dname_len = 1;
   tocopy = (uint8_t*)"\0";
  }
  if(*len < *dname_len)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
    sldns_buffer_position(strbuf));
  memmove(rr, tocopy, *dname_len);
 } else if(*token == '\0') {


  uint8_t* tocopy;
  if(prev) {
   *dname_len = prev_len;
   tocopy = prev;
  } else if(origin) {
   *dname_len = origin_len;
   tocopy = origin;
  } else {
   *dname_len = 1;
   tocopy = (uint8_t*)"\0";
  }
  if(*len < *dname_len)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
    sldns_buffer_position(strbuf));
  memmove(rr, tocopy, *dname_len);
 } else {
  size_t dlen = *len;
  int s = sldns_str2wire_dname_buf_origin(token, rr, &dlen,
   origin, origin_len);
  if(s) return RET_ERR_SHIFT(s,
   sldns_buffer_position(strbuf)-strlen(token));
  *dname_len = dlen;
 }
 return LDNS_WIREPARSE_ERR_OK;
}
