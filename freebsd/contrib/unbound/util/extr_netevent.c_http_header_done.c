
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 size_t sldns_buffer_limit (int *) ;
 size_t sldns_buffer_position (int *) ;
 scalar_t__ sldns_buffer_read_u8_at (int *,size_t) ;

__attribute__((used)) static int
http_header_done(sldns_buffer* buf)
{
 size_t i;
 for(i=sldns_buffer_position(buf); i<sldns_buffer_limit(buf); i++) {

  if((char)sldns_buffer_read_u8_at(buf, i) == '\n')
   return 1;
 }
 return 0;
}
