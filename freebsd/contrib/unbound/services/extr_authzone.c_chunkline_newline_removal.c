
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;


 size_t sldns_buffer_limit (int *) ;
 scalar_t__ sldns_buffer_read_u8_at (int *,size_t) ;
 int sldns_buffer_set_limit (int *,size_t) ;
 int sldns_buffer_write_u8_at (int *,size_t,int ) ;

__attribute__((used)) static void
chunkline_newline_removal(sldns_buffer* buf)
{
 size_t i, end=sldns_buffer_limit(buf);
 for(i=0; i<end; i++) {
  char c = (char)sldns_buffer_read_u8_at(buf, i);
  if(c == '\n' && i==end-1) {
   sldns_buffer_write_u8_at(buf, i, 0);
   sldns_buffer_set_limit(buf, end-1);
   return;
  }
  if(c == '\n')
   sldns_buffer_write_u8_at(buf, i, (uint8_t)' ');
 }
}
