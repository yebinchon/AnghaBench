
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct string_stream_mark {int pos; } ;
struct string_stream_baton {int amt_read; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 struct string_stream_mark* apr_palloc (int *,int) ;

__attribute__((used)) static svn_error_t *
mark_handler_string(void *baton, svn_stream_mark_t **mark, apr_pool_t *pool)
{
  struct string_stream_baton *btn;
  struct string_stream_mark *marker;

  btn = baton;

  marker = apr_palloc(pool, sizeof(*marker));
  marker->pos = btn->amt_read;
  *mark = (svn_stream_mark_t *)marker;
  return SVN_NO_ERROR;
}
