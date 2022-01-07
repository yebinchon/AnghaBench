
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _fixed; void* _data; } ;
typedef TYPE_1__ sldns_buffer ;



void *
sldns_buffer_export(sldns_buffer *buffer)
{
 buffer->_fixed = 1;
 return buffer->_data;
}
