
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 size_t sldns_buffer_position (int *) ;
 scalar_t__ sldns_buffer_read_u8_at (int *,size_t) ;
 int sldns_buffer_set_position (int *,size_t) ;

__attribute__((used)) static void
chunkline_remove_trailcomment(sldns_buffer* buf, size_t start)
{
 size_t end = sldns_buffer_position(buf);
 size_t i;
 int squote = 0, dquote = 0;
 for(i=start; i<end; i++) {
  char c = (char)sldns_buffer_read_u8_at(buf, i);
  if(squote && c != '\'') continue;
  if(dquote && c != '"') continue;
  if(c == '"')
   dquote = !dquote;
  else if(c == '\'')
   squote = !squote;
  else if(c == ';') {

   sldns_buffer_set_position(buf, i);
   return;
  }
 }

}
