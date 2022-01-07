
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t _capacity; size_t _limit; int _fixed; scalar_t__ _vfixed; void* _data; } ;
typedef TYPE_1__ sldns_buffer ;


 int memset (TYPE_1__*,int ,int) ;

void
sldns_buffer_init_frm_data(sldns_buffer *buffer, void *data, size_t size)
{
 memset(buffer, 0, sizeof(*buffer));
 buffer->_data = data;
 buffer->_capacity = buffer->_limit = size;
 buffer->_fixed = 1;
 buffer->_vfixed = 0;
}
