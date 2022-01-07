
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_6__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct special_stream_baton {int write_content; int write_stream; int * read_stream; int path; int * pool; } ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 struct special_stream_baton* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int close_handler_special ;
 int read_handler_special ;
 int svn_error_clear (TYPE_1__*) ;
 int * svn_stream_create (struct special_stream_baton*,int *) ;
 int svn_stream_from_stringbuf (int ,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_read2 (int *,int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int svn_stringbuf_create_empty (int *) ;
 TYPE_1__* svn_subst_read_specialfile (int **,char const*,int *,int *) ;
 int write_handler_special ;

svn_error_t *
svn_subst_stream_from_specialfile(svn_stream_t **stream,
                                  const char *path,
                                  apr_pool_t *pool)
{
  struct special_stream_baton *baton = apr_palloc(pool, sizeof(*baton));
  svn_error_t *err;

  baton->pool = pool;
  baton->path = apr_pstrdup(pool, path);

  err = svn_subst_read_specialfile(&baton->read_stream, path, pool, pool);


  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    {
      svn_error_clear(err);




      baton->read_stream = ((void*)0);
    }

  baton->write_content = svn_stringbuf_create_empty(pool);
  baton->write_stream = svn_stream_from_stringbuf(baton->write_content, pool);

  *stream = svn_stream_create(baton, pool);
  svn_stream_set_read2(*stream, ((void*)0) ,
                       read_handler_special);
  svn_stream_set_write(*stream, write_handler_special);
  svn_stream_set_close(*stream, close_handler_special);

  return SVN_NO_ERROR;
}
