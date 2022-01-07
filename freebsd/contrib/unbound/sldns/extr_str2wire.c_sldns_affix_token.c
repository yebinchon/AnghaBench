
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_rdf_type ;
typedef int sldns_buffer ;


 int sldns_parse_rdf_token (int *,char*,size_t,int*,int*,size_t*,char const*,int ,size_t*) ;

__attribute__((used)) static int
sldns_affix_token(sldns_buffer* strbuf, char* token, size_t* token_len,
 int* quoted, int* parens, size_t* pre_data_pos,
 const char* delimiters, sldns_rdf_type rdftype, size_t* token_strlen)
{
 size_t addlen = *token_len - *token_strlen;
 size_t addstrlen = 0;


 if(addlen < 1) return 0;
 token[*token_strlen] = ' ';
 token[++(*token_strlen)] = 0;


 addlen = *token_len - *token_strlen;
 if(!sldns_parse_rdf_token(strbuf, token+*token_strlen, addlen, quoted,
  parens, pre_data_pos, delimiters, rdftype, &addstrlen))
  return 0;
 (*token_strlen) += addstrlen;
 return 1;
}
