
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sldns_file_parse_state {int default_ttl; } ;
typedef int sldns_buffer ;


 scalar_t__ isspace (unsigned char) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_str2period (int ,char const**) ;
 int sldns_strip_ws (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
http_parse_ttl(sldns_buffer* buf, struct sldns_file_parse_state* pstate)
{
 char* line = (char*)sldns_buffer_begin(buf);
 if(strncmp(line, "$TTL", 4) == 0 &&
  isspace((unsigned char)line[4])) {
  const char* end = ((void*)0);
  pstate->default_ttl = sldns_str2period(
   sldns_strip_ws(line+5), &end);
  return 1;
 }
 return 0;
}
