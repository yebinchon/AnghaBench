
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct shim_callbacks_baton {int wc_ctx; int relpath_map; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 char* svn_hash_gets (int ,char const*) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_stream_copy3 (int *,int *,int *,int *,int *) ;
 int svn_stream_open_unique (int **,char const**,int *,int ,int *,int *) ;
 TYPE_1__* svn_wc_get_pristine_contents2 (int **,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
fetch_base_func(const char **filename,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  struct shim_callbacks_baton *scb = baton;
  const char *local_abspath;
  svn_stream_t *pristine_stream;
  svn_stream_t *temp_stream;
  svn_error_t *err;

  local_abspath = svn_hash_gets(scb->relpath_map, path);
  if (!local_abspath)
    {
      *filename = ((void*)0);
      return SVN_NO_ERROR;
    }


  err = svn_wc_get_pristine_contents2(&pristine_stream, scb->wc_ctx,
                                      local_abspath, scratch_pool,
                                      scratch_pool);
  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      svn_error_clear(err);
      *filename = ((void*)0);
      return SVN_NO_ERROR;
    }
  else if (err)
    return svn_error_trace(err);

  SVN_ERR(svn_stream_open_unique(&temp_stream, filename, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));
  SVN_ERR(svn_stream_copy3(pristine_stream, temp_stream, ((void*)0), ((void*)0),
                           scratch_pool));

  return SVN_NO_ERROR;
}
