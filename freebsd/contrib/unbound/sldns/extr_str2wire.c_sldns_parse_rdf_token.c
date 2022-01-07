
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_rdf_type ;
typedef int sldns_buffer ;


 int memmove (char*,char*,size_t) ;
 int sldns_bget_token_par (int *,char*,char*,size_t,int*,char*) ;
 char* sldns_buffer_current (int *) ;
 size_t sldns_buffer_position (int *) ;
 scalar_t__ sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;
 scalar_t__ sldns_rdf_type_maybe_quoted (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
sldns_parse_rdf_token(sldns_buffer* strbuf, char* token, size_t token_len,
 int* quoted, int* parens, size_t* pre_data_pos,
 const char* delimiters, sldns_rdf_type rdftype, size_t* token_strlen)
{
 size_t slen;


 while(sldns_buffer_remaining(strbuf) > 0 && !*quoted &&
  *(sldns_buffer_current(strbuf)) == ' ') {
  sldns_buffer_skip(strbuf, 1);
 }

 *pre_data_pos = sldns_buffer_position(strbuf);
 if(sldns_bget_token_par(strbuf, token, (*quoted)?"\"":delimiters,
  token_len, parens, (*quoted)?((void*)0):" \t") == -1) {
  return 0;
 }
 slen = strlen(token);

 if(!*quoted && sldns_rdf_type_maybe_quoted(rdftype) &&
  slen >= 2 &&
  (token[0] == '"' || token[0] == '\'') &&
  (token[slen-1] == '"' || token[slen-1] == '\'')) {

  memmove(token, token+1, slen-2);
  token[slen-2] = 0;
  slen -= 2;
  *quoted = 1;
 } else if(!*quoted && sldns_rdf_type_maybe_quoted(rdftype) &&
  slen >= 2 &&
  (token[0] == '"' || token[0] == '\'')) {


  memmove(token, token+1, slen-1);
  token[slen-1] = 0;
  slen -= 1;
  *quoted = 1;

  while(sldns_buffer_position(strbuf) > 0 &&
   (sldns_buffer_current(strbuf)[-1] == ' ' ||
   sldns_buffer_current(strbuf)[-1] == '\t')) {
   sldns_buffer_skip(strbuf, -1);
  }
  if(sldns_bget_token_par(strbuf, token+slen,
   "\"", token_len-slen,
   parens, ((void*)0)) == -1) {
   return 0;
  }
  slen = strlen(token);
 }
 *token_strlen = slen;
 return 1;
}
