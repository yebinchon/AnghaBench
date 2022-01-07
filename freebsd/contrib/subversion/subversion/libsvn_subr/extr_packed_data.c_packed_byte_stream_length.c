
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* first_substream; TYPE_1__* packed; } ;
typedef TYPE_2__ svn_packed__byte_stream_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_4__ {scalar_t__ len; } ;



__attribute__((used)) static apr_size_t
packed_byte_stream_length(svn_packed__byte_stream_t *stream)
{
  apr_size_t result = stream->packed->len;

  for (stream = stream->first_substream; stream; stream = stream->next)
    result += packed_byte_stream_length(stream);

  return result;
}
