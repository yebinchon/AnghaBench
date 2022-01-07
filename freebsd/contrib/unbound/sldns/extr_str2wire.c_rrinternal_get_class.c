
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_RR_CLASS_IN ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_CLASS ;
 int RET_ERR (int ,int ) ;
 int sldns_bget_token (int *,char*,char*,size_t) ;
 int sldns_buffer_position (int *) ;
 scalar_t__ sldns_get_rr_class_by_name (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
rrinternal_get_class(sldns_buffer* strbuf, char* token, size_t token_len,
 int* not_there, uint16_t* cl)
{

 if(!*not_there) {

  if(sldns_bget_token(strbuf, token, "\t\n ", token_len) == -1) {
   return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_CLASS,
    sldns_buffer_position(strbuf));
  }
 } else *not_there = 0;
 *cl = sldns_get_rr_class_by_name(token);

 if(*cl == 0 && strcmp(token, "CLASS0") != 0) {
  *not_there = 1;
  *cl = LDNS_RR_CLASS_IN;
 }
 return LDNS_WIREPARSE_ERR_OK;
}
