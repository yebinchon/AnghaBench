
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int packed; int lengths_stream; } ;
typedef TYPE_1__ svn_packed__byte_stream_t ;
typedef int apr_size_t ;


 int svn_packed__add_uint (int ,int ) ;
 int svn_stringbuf_appendbytes (int ,char const*,int ) ;

void
svn_packed__add_bytes(svn_packed__byte_stream_t *stream,
                      const char *data,
                      apr_size_t len)
{
  svn_packed__add_uint(stream->lengths_stream, len);
  svn_stringbuf_appendbytes(stream->packed, data, len);
}
