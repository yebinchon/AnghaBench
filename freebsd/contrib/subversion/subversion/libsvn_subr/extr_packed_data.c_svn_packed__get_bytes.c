
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* packed; int lengths_stream; } ;
typedef TYPE_2__ svn_packed__byte_stream_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_4__ {char* data; scalar_t__ len; int blocksize; } ;


 int svn_packed__get_uint (int ) ;

const char *
svn_packed__get_bytes(svn_packed__byte_stream_t *stream,
                      apr_size_t *len)
{
  const char *result = stream->packed->data;
  apr_size_t count = (apr_size_t)svn_packed__get_uint(stream->lengths_stream);

  if (count > stream->packed->len)
    count = stream->packed->len;


  stream->packed->data += count;
  stream->packed->len -= count;
  stream->packed->blocksize -= count;

  *len = count;
  return result;
}
