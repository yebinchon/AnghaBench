
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t buffer_used; int * buffer; } ;
typedef TYPE_1__ svn_packed__int_stream_t ;
typedef int apr_uint64_t ;


 scalar_t__ SVN__PACKED_DATA_BUFFER_SIZE ;
 int data_flush_buffer (TYPE_1__*) ;

void
svn_packed__add_uint(svn_packed__int_stream_t *stream,
                     apr_uint64_t value)
{
  stream->buffer[stream->buffer_used] = value;
  if (++stream->buffer_used == SVN__PACKED_DATA_BUFFER_SIZE)
    data_flush_buffer(stream);
}
