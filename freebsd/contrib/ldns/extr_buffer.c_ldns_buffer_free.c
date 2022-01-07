
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* _data; int _fixed; } ;
typedef TYPE_1__ ldns_buffer ;


 int LDNS_FREE (TYPE_1__*) ;

void
ldns_buffer_free(ldns_buffer *buffer)
{
 if (!buffer) {
  return;
 }

 if (!buffer->_fixed)
  LDNS_FREE(buffer->_data);

 LDNS_FREE(buffer);
}
