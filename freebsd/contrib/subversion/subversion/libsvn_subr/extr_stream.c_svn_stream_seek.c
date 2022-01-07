
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baton; int (* seek_fn ) (int ,int const*) ;} ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_stream_mark_t ;
typedef int svn_error_t ;


 int SVN_ERR_STREAM_SEEK_NOT_SUPPORTED ;
 int stub1 (int ,int const*) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_stream_seek(svn_stream_t *stream, const svn_stream_mark_t *mark)
{
  if (stream->seek_fn == ((void*)0))
    return svn_error_create(SVN_ERR_STREAM_SEEK_NOT_SUPPORTED, ((void*)0), ((void*)0));

  return svn_error_trace(stream->seek_fn(stream->baton, mark));
}
