
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_DEFAULT_TTL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_TTL ;
 int RET_ERR (int ,int ) ;
 int isdigit (unsigned char) ;
 int sldns_bget_token (int *,char*,char*,size_t) ;
 int sldns_buffer_position (int *) ;
 scalar_t__ sldns_str2period (char*,char const**) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
rrinternal_get_ttl(sldns_buffer* strbuf, char* token, size_t token_len,
 int* not_there, uint32_t* ttl, uint32_t default_ttl)
{
 const char* endptr;
 if(sldns_bget_token(strbuf, token, "\t\n ", token_len) == -1) {
  return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_TTL,
   sldns_buffer_position(strbuf));
 }
 *ttl = (uint32_t) sldns_str2period(token, &endptr);

 if (strlen(token) > 0 && !isdigit((unsigned char)token[0])) {
  *not_there = 1;

  if (default_ttl == 0) {
   *ttl = LDNS_DEFAULT_TTL;
  } else {
   *ttl = default_ttl;
  }
 }
 return LDNS_WIREPARSE_ERR_OK;
}
