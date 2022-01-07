
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
struct special_stream_baton {int write_content; int write_stream; int * pool; int path; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 struct special_stream_baton* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int close_handler_special ;
 int * svn_stream_create (struct special_stream_baton*,int *) ;
 int svn_stream_from_stringbuf (int ,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int svn_stringbuf_create_empty (int *) ;
 int write_handler_special ;

svn_error_t *
svn_subst_create_specialfile(svn_stream_t **stream,
                             const char *path,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  struct special_stream_baton *baton = apr_palloc(result_pool, sizeof(*baton));

  baton->path = apr_pstrdup(result_pool, path);


  baton->pool = result_pool;

  baton->write_content = svn_stringbuf_create_empty(result_pool);
  baton->write_stream = svn_stream_from_stringbuf(baton->write_content,
                                                  result_pool);

  *stream = svn_stream_create(baton, result_pool);
  svn_stream_set_write(*stream, write_handler_special);
  svn_stream_set_close(*stream, close_handler_special);

  return SVN_NO_ERROR;
}
