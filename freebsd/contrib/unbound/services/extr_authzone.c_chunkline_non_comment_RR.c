
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sldns_file_parse_state {int dummy; } ;
struct auth_chunk {int dummy; } ;
typedef int sldns_buffer ;


 scalar_t__ chunkline_get_line_collated (struct auth_chunk**,size_t*,int *) ;
 scalar_t__ chunkline_is_comment_line_or_empty (int *) ;
 scalar_t__ http_parse_origin (int *,struct sldns_file_parse_state*) ;
 scalar_t__ http_parse_ttl (int *,struct sldns_file_parse_state*) ;

__attribute__((used)) static int
chunkline_non_comment_RR(struct auth_chunk** chunk, size_t* chunk_pos,
 sldns_buffer* buf, struct sldns_file_parse_state* pstate)
{
 while(chunkline_get_line_collated(chunk, chunk_pos, buf)) {
  if(chunkline_is_comment_line_or_empty(buf)) {

   continue;
  }
  if(http_parse_origin(buf, pstate)) {
   continue;
  }
  if(http_parse_ttl(buf, pstate)) {
   continue;
  }
  return 1;
 }

 return 0;
}
