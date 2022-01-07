
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer_used; int * buffer; } ;
typedef TYPE_1__ svn_packed__int_stream_t ;
typedef int apr_uint64_t ;


 int svn_packed__data_fill_buffer (TYPE_1__*) ;

apr_uint64_t
svn_packed__get_uint(svn_packed__int_stream_t *stream)
{
  if (stream->buffer_used == 0)
    svn_packed__data_fill_buffer(stream);

  return stream->buffer_used ? stream->buffer[--stream->buffer_used] : 0;
}
