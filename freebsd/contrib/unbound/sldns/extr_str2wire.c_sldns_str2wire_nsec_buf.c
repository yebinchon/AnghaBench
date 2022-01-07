
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int window_in_use ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int typebits ;
typedef int token ;
typedef int sldns_buffer ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_TYPE ;
 int RET_ERR (int ,int ) ;
 int memset (int*,int ,int) ;
 int sldns_bget_token (int *,char*,char const*,int) ;
 int sldns_buffer_init_frm_data (int *,int*,int ) ;
 int sldns_buffer_position (int *) ;
 scalar_t__ sldns_buffer_remaining (int *) ;
 int sldns_get_rr_type_by_name (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;

int sldns_str2wire_nsec_buf(const char* str, uint8_t* rd, size_t* len)
{
 const char *delim = "\n\t ";
 char token[64];
 size_t type_count = 0;
 int block;
 size_t used = 0;
 uint16_t maxtype = 0;
 uint8_t typebits[8192];
 uint8_t window_in_use[256];


 sldns_buffer strbuf;
 sldns_buffer_init_frm_data(&strbuf, (uint8_t*)str, strlen(str));


 memset(typebits, 0, sizeof(typebits));
 memset(window_in_use, 0, sizeof(window_in_use));
 while(sldns_buffer_remaining(&strbuf) > 0 &&
  sldns_bget_token(&strbuf, token, delim, sizeof(token)) != -1) {
  uint16_t t = sldns_get_rr_type_by_name(token);
  if(token[0] == 0)
   continue;
  if(t == 0 && strcmp(token, "TYPE0") != 0)
   return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_TYPE,
    sldns_buffer_position(&strbuf));
  typebits[t/8] |= (0x80>>(t%8));
  window_in_use[t/256] = 1;
  type_count++;
  if(t > maxtype) maxtype = t;
 }


 if(type_count == 0) {
  *len = 0;
  return LDNS_WIREPARSE_ERR_OK;
 }



 for(block = 0; block <= (int)maxtype/256; block++) {
  int i, blocklen = 0;
  if(!window_in_use[block])
   continue;
  for(i=0; i<32; i++) {
   if(typebits[block*32+i] != 0)
    blocklen = i+1;
  }
  if(blocklen == 0)
   continue;
  if(used+blocklen+2 > *len)
   return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
  rd[used+0] = (uint8_t)block;
  rd[used+1] = (uint8_t)blocklen;
  for(i=0; i<blocklen; i++) {
   rd[used+2+i] = typebits[block*32+i];
  }
  used += blocklen+2;
 }
 *len = used;
 return LDNS_WIREPARSE_ERR_OK;
}
