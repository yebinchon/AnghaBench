
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* _data; int _fixed; } ;
typedef TYPE_1__ sldns_buffer ;


 int free (TYPE_1__*) ;

void
sldns_buffer_free(sldns_buffer *buffer)
{
 if (!buffer) {
  return;
 }

 if (!buffer->_fixed)
  free(buffer->_data);

 free(buffer);
}
