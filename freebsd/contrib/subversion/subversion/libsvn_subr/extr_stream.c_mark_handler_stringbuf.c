
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct stringbuf_stream_mark {int pos; } ;
struct stringbuf_stream_baton {int amt_read; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 struct stringbuf_stream_mark* apr_palloc (int *,int) ;

__attribute__((used)) static svn_error_t *
mark_handler_stringbuf(void *baton, svn_stream_mark_t **mark, apr_pool_t *pool)
{
  struct stringbuf_stream_baton *btn;
  struct stringbuf_stream_mark *stringbuf_stream_mark;

  btn = baton;

  stringbuf_stream_mark = apr_palloc(pool, sizeof(*stringbuf_stream_mark));
  stringbuf_stream_mark->pos = btn->amt_read;
  *mark = (svn_stream_mark_t *)stringbuf_stream_mark;
  return SVN_NO_ERROR;
}
