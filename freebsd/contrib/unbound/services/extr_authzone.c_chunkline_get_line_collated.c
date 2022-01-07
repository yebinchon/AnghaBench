
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_chunk {int dummy; } ;
typedef int sldns_buffer ;


 int VERB_ALGO ;
 scalar_t__ chunkline_count_parens (int *,size_t) ;
 int chunkline_get_line (struct auth_chunk**,size_t*,int *) ;
 int chunkline_remove_trailcomment (int *,size_t) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;
 scalar_t__ sldns_buffer_position (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_write_u8_at (int *,scalar_t__,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
chunkline_get_line_collated(struct auth_chunk** chunk, size_t* chunk_pos,
 sldns_buffer* buf)
{
 size_t pos;
 int parens = 0;
 sldns_buffer_clear(buf);
 pos = sldns_buffer_position(buf);
 if(!chunkline_get_line(chunk, chunk_pos, buf)) {
  if(sldns_buffer_position(buf) < sldns_buffer_limit(buf))
   sldns_buffer_write_u8_at(buf, sldns_buffer_position(buf), 0);
  else sldns_buffer_write_u8_at(buf, sldns_buffer_position(buf)-1, 0);
  sldns_buffer_flip(buf);
  return 0;
 }
 parens += chunkline_count_parens(buf, pos);
 while(parens > 0) {
  chunkline_remove_trailcomment(buf, pos);
  pos = sldns_buffer_position(buf);
  if(!chunkline_get_line(chunk, chunk_pos, buf)) {
   if(sldns_buffer_position(buf) < sldns_buffer_limit(buf))
    sldns_buffer_write_u8_at(buf, sldns_buffer_position(buf), 0);
   else sldns_buffer_write_u8_at(buf, sldns_buffer_position(buf)-1, 0);
   sldns_buffer_flip(buf);
   return 0;
  }
  parens += chunkline_count_parens(buf, pos);
 }

 if(sldns_buffer_remaining(buf) < 1) {
  verbose(VERB_ALGO, "http chunkline: "
   "line too long");
  return 0;
 }
 sldns_buffer_write_u8_at(buf, sldns_buffer_position(buf), 0);
 sldns_buffer_flip(buf);
 return 1;
}
