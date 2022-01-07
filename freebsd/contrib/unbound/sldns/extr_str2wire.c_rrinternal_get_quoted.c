
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_rdf_type ;
typedef int sldns_buffer ;


 char* sldns_buffer_current (int *) ;
 scalar_t__ sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;
 scalar_t__ sldns_rdf_type_maybe_quoted (int ) ;

__attribute__((used)) static int
rrinternal_get_quoted(sldns_buffer* strbuf, const char** delimiters,
 sldns_rdf_type rdftype)
{
 if(sldns_rdf_type_maybe_quoted(rdftype) &&
  sldns_buffer_remaining(strbuf) > 0) {


  while(sldns_buffer_remaining(strbuf) > 0 &&
   *(sldns_buffer_current(strbuf)) == ' ') {
   sldns_buffer_skip(strbuf, 1);
  }

  if(sldns_buffer_remaining(strbuf) > 0 &&
   *(sldns_buffer_current(strbuf)) == '\"') {
   *delimiters = "\"\0";
   sldns_buffer_skip(strbuf, 1);
   return 1;
  }
 }
 return 0;
}
