
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out_stream; } ;
typedef TYPE_1__ svn_ra_svn__stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_write (int ,char const*,int *) ;

svn_error_t *
svn_ra_svn__stream_write(svn_ra_svn__stream_t *stream,
                         const char *data, apr_size_t *len)
{
  return svn_error_trace(svn_stream_write(stream->out_stream, data, len));
}
