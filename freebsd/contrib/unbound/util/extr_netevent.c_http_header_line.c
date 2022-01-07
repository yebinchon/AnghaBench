
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 scalar_t__ sldns_buffer_current (int *) ;
 size_t sldns_buffer_limit (int *) ;
 size_t sldns_buffer_position (int *) ;
 scalar_t__ sldns_buffer_read_u8_at (int *,size_t) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_buffer_write_u8_at (int *,size_t,int ) ;

__attribute__((used)) static char*
http_header_line(sldns_buffer* buf)
{
 char* result = (char*)sldns_buffer_current(buf);
 size_t i;
 for(i=sldns_buffer_position(buf); i<sldns_buffer_limit(buf); i++) {

  if((char)sldns_buffer_read_u8_at(buf, i) == '\r')
   sldns_buffer_write_u8_at(buf, i, 0);

  if((char)sldns_buffer_read_u8_at(buf, i) == '\n') {
   sldns_buffer_write_u8_at(buf, i, 0);
   sldns_buffer_set_position(buf, i+1);
   return result;
  }
 }
 return ((void*)0);
}
