
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int _position; } ;
typedef TYPE_1__ ldns_buffer ;


 int EOF ;
 int ldns_buffer_available_at (TYPE_1__*,int ,int) ;
 int ldns_buffer_limit (TYPE_1__*) ;
 scalar_t__ ldns_buffer_read_u8 (TYPE_1__*) ;
 int ldns_buffer_set_position (TYPE_1__*,int ) ;

int
ldns_bgetc(ldns_buffer *buffer)
{
 if (!ldns_buffer_available_at(buffer, buffer->_position, sizeof(uint8_t))) {
  ldns_buffer_set_position(buffer, ldns_buffer_limit(buffer));

  return EOF;
 }
 return (int)ldns_buffer_read_u8(buffer);
}
