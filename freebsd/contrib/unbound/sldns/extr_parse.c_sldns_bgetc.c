
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int _position; } ;
typedef TYPE_1__ sldns_buffer ;


 int EOF ;
 int sldns_buffer_available_at (TYPE_1__*,int ,int) ;
 int sldns_buffer_limit (TYPE_1__*) ;
 scalar_t__ sldns_buffer_read_u8 (TYPE_1__*) ;
 int sldns_buffer_set_position (TYPE_1__*,int ) ;

int
sldns_bgetc(sldns_buffer *buffer)
{
 if (!sldns_buffer_available_at(buffer, buffer->_position, sizeof(uint8_t))) {
  sldns_buffer_set_position(buffer, sldns_buffer_limit(buffer));

  return EOF;
 }
 return (int)sldns_buffer_read_u8(buffer);
}
