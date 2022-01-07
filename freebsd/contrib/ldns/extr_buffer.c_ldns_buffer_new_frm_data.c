
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t _limit; size_t _capacity; int _status; int _data; scalar_t__ _fixed; scalar_t__ _position; } ;
typedef TYPE_1__ ldns_buffer ;


 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 int LDNS_XMALLOC (int ,size_t) ;
 int assert (int ) ;
 int ldns_buffer_invariant (TYPE_1__*) ;
 int memcpy (int ,void const*,size_t) ;
 int uint8_t ;

void
ldns_buffer_new_frm_data(ldns_buffer *buffer, const void *data, size_t size)
{
 assert(data != ((void*)0));

 buffer->_position = 0;
 buffer->_limit = buffer->_capacity = size;
 buffer->_fixed = 0;
 buffer->_data = LDNS_XMALLOC(uint8_t, size);
 if(!buffer->_data) {
  buffer->_status = LDNS_STATUS_MEM_ERR;
  return;
 }
 memcpy(buffer->_data, data, size);
 buffer->_status = LDNS_STATUS_OK;

 ldns_buffer_invariant(buffer);
}
