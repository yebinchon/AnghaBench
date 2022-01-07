
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int baton; int (* read_full_fn ) (int ,char*,int *) ;} ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int full_read_fallback (TYPE_1__*,char*,int *) ;
 int stub1 (int ,char*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_stream_read_full(svn_stream_t *stream, char *buffer, apr_size_t *len)
{
  if (stream->read_full_fn == ((void*)0))
    return svn_error_trace(full_read_fallback(stream, buffer, len));

  return svn_error_trace(stream->read_full_fn(stream->baton, buffer, len));
}
