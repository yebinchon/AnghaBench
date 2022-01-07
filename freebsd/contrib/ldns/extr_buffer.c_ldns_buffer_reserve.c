
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _capacity; int _position; int _limit; int _status; int _fixed; } ;
typedef TYPE_1__ ldns_buffer ;


 int LDNS_STATUS_MEM_ERR ;
 int assert (int) ;
 int ldns_buffer_invariant (TYPE_1__*) ;
 int ldns_buffer_set_capacity (TYPE_1__*,size_t) ;

bool
ldns_buffer_reserve(ldns_buffer *buffer, size_t amount)
{
 ldns_buffer_invariant(buffer);
 assert(!buffer->_fixed);
 if (buffer->_capacity < buffer->_position + amount) {
  size_t new_capacity = buffer->_capacity * 3 / 2;

  if (new_capacity < buffer->_position + amount) {
   new_capacity = buffer->_position + amount;
  }
  if (!ldns_buffer_set_capacity(buffer, new_capacity)) {
   buffer->_status = LDNS_STATUS_MEM_ERR;
   return 0;
  }
 }
 buffer->_limit = buffer->_capacity;
 return 1;
}
