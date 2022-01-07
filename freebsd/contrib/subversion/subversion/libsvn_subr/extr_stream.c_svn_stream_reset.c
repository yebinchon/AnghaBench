
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_seek (int *,int *) ;

svn_error_t *
svn_stream_reset(svn_stream_t *stream)
{
  return svn_error_trace(
            svn_stream_seek(stream, ((void*)0)));
}
