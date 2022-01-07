
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baton; int (* close_fn ) (int ) ;} ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;
 int stub1 (int ) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_stream_close(svn_stream_t *stream)
{
  if (stream->close_fn == ((void*)0))
    return SVN_NO_ERROR;
  return svn_error_trace(stream->close_fn(stream->baton));
}
