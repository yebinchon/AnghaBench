
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t _limit; size_t _capacity; scalar_t__ _status_err; scalar_t__ _vfixed; scalar_t__ _fixed; scalar_t__ _position; int * _data; } ;
typedef TYPE_1__ sldns_buffer ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (size_t) ;
 int sldns_buffer_invariant (TYPE_1__*) ;

sldns_buffer *
sldns_buffer_new(size_t capacity)
{
 sldns_buffer *buffer = (sldns_buffer*)malloc(sizeof(sldns_buffer));

 if (!buffer) {
  return ((void*)0);
 }

 buffer->_data = (uint8_t *) malloc(capacity);
 if (!buffer->_data) {
  free(buffer);
  return ((void*)0);
 }

 buffer->_position = 0;
 buffer->_limit = buffer->_capacity = capacity;
 buffer->_fixed = 0;
 buffer->_vfixed = 0;
 buffer->_status_err = 0;

 sldns_buffer_invariant(buffer);

 return buffer;
}
