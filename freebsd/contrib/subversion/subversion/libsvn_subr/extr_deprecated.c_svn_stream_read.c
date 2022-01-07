
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_read_full (int *,char*,int *) ;

svn_error_t *
svn_stream_read(svn_stream_t *stream,
                char *buffer,
                apr_size_t *len)
{
  return svn_error_trace(svn_stream_read_full(stream, buffer, len));
}
