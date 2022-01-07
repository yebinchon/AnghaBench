
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 size_t sldns_buffer_limit (int *) ;
 scalar_t__ sldns_buffer_read_u8_at (int *,size_t) ;

__attribute__((used)) static int
chunkline_is_comment_line_or_empty(sldns_buffer* buf)
{
 size_t i, end = sldns_buffer_limit(buf);
 for(i=0; i<end; i++) {
  char c = (char)sldns_buffer_read_u8_at(buf, i);
  if(c == ';')
   return 1;
  else if(c != ' ' && c != '\t' && c != '\r' && c != '\n')
   return 0;
 }
 return 1;
}
