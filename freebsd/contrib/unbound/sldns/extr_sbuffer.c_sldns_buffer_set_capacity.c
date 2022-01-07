
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t _position; int _status_err; size_t _limit; size_t _capacity; void* _data; int _fixed; } ;
typedef TYPE_1__ sldns_buffer ;


 int assert (int) ;
 scalar_t__ realloc (void*,size_t) ;
 int sldns_buffer_invariant (TYPE_1__*) ;

int
sldns_buffer_set_capacity(sldns_buffer *buffer, size_t capacity)
{
 void *data;

 sldns_buffer_invariant(buffer);
 assert(buffer->_position <= capacity && !buffer->_fixed);

 data = (uint8_t *) realloc(buffer->_data, capacity);
 if (!data) {
  buffer->_status_err = 1;
  return 0;
 } else {
  buffer->_data = data;
  buffer->_limit = buffer->_capacity = capacity;
  return 1;
 }
}
