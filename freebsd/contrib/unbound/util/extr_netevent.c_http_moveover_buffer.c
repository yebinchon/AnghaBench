
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sldns_buffer ;


 int memmove (int ,int ,size_t) ;
 int sldns_buffer_at (int *,size_t) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 size_t sldns_buffer_position (int *) ;
 size_t sldns_buffer_remaining (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;

__attribute__((used)) static void
http_moveover_buffer(sldns_buffer* buf)
{
 size_t pos = sldns_buffer_position(buf);
 size_t len = sldns_buffer_remaining(buf);
 sldns_buffer_clear(buf);
 memmove(sldns_buffer_begin(buf), sldns_buffer_at(buf, pos), len);
 sldns_buffer_set_position(buf, len);
}
