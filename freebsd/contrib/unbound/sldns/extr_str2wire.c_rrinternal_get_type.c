
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int sldns_buffer ;


 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_TYPE ;
 int RET_ERR (int ,int ) ;
 int sldns_bget_token (int *,char*,char*,size_t) ;
 int sldns_buffer_position (int *) ;
 scalar_t__ sldns_get_rr_type_by_name (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
rrinternal_get_type(sldns_buffer* strbuf, char* token, size_t token_len,
 int* not_there, uint16_t* tp)
{

 if(!*not_there) {

  if(sldns_bget_token(strbuf, token, "\t\n ", token_len) == -1) {
   return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_TYPE,
    sldns_buffer_position(strbuf));
  }
 }
 *tp = sldns_get_rr_type_by_name(token);
 if(*tp == 0 && strcmp(token, "TYPE0") != 0) {
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_TYPE,
   sldns_buffer_position(strbuf));
 }
 return LDNS_WIREPARSE_ERR_OK;
}
