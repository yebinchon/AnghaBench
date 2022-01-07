
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int baton; int (* skip_fn ) (int ,int ) ;int * read_fn; int * read_full_fn; } ;
typedef TYPE_1__ svn_stream_t ;
typedef int * svn_read_fn_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int SVN_ERR_STREAM_NOT_SUPPORTED ;
 int skip_default_handler (int ,int ,int *) ;
 int stub1 (int ,int ) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_stream_skip(svn_stream_t *stream, apr_size_t len)
{
  if (stream->skip_fn == ((void*)0))
    {
      svn_read_fn_t read_fn = stream->read_full_fn ? stream->read_full_fn
                                                   : stream->read_fn;
      if (read_fn == ((void*)0))
        return svn_error_create(SVN_ERR_STREAM_NOT_SUPPORTED, ((void*)0), ((void*)0));

      return svn_error_trace(skip_default_handler(stream->baton, len,
                                                  read_fn));
    }

  return svn_error_trace(stream->skip_fn(stream->baton, len));
}
