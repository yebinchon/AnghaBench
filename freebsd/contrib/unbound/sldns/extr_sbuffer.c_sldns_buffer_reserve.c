
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _capacity; int _position; int _status_err; int _limit; int _fixed; } ;
typedef TYPE_1__ sldns_buffer ;


 int assert (int) ;
 int sldns_buffer_invariant (TYPE_1__*) ;
 int sldns_buffer_set_capacity (TYPE_1__*,size_t) ;

int
sldns_buffer_reserve(sldns_buffer *buffer, size_t amount)
{
 sldns_buffer_invariant(buffer);
 assert(!buffer->_fixed);
 if (buffer->_capacity < buffer->_position + amount) {
  size_t new_capacity = buffer->_capacity * 3 / 2;

  if (new_capacity < buffer->_position + amount) {
   new_capacity = buffer->_position + amount;
  }
  if (!sldns_buffer_set_capacity(buffer, new_capacity)) {
   buffer->_status_err = 1;
   return 0;
  }
 }
 buffer->_limit = buffer->_capacity;
 return 1;
}
