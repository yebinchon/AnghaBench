
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_4__ {int baton; int (* readline_fn ) (int ,int **,char const*,int *,int *) ;} ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stream_readline_bytewise (int **,int *,char const*,TYPE_1__*,int *) ;
 int stub1 (int ,int **,char const*,int *,int *) ;

svn_error_t *
svn_stream_readline(svn_stream_t *stream,
                    svn_stringbuf_t **stringbuf,
                    const char *eol,
                    svn_boolean_t *eof,
                    apr_pool_t *pool)
{
  if (stream->readline_fn)
    {

      SVN_ERR(stream->readline_fn(stream->baton, stringbuf, eol, eof, pool));
    }
  else
    {

      SVN_ERR(stream_readline_bytewise(stringbuf, eof, eol, stream, pool));
    }

  return SVN_NO_ERROR;
}
