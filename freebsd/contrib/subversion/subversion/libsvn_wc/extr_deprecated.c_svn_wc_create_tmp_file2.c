
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_io_file_del_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_io_open_unique_file3 (int **,char const**,char const*,int ,int *,int *) ;
 int * svn_wc__get_tmpdir (char const**,int *,char const*,int *,int *) ;
 int svn_wc_context_create (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;

svn_error_t *
svn_wc_create_tmp_file2(apr_file_t **fp,
                        const char **new_name,
                        const char *path,
                        svn_io_file_del_t delete_when,
                        apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  const char *local_abspath;
  const char *temp_dir;
  svn_error_t *err;

  SVN_ERR_ASSERT(fp || new_name);

  SVN_ERR(svn_wc_context_create(&wc_ctx, ((void*)0) , pool, pool));

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  err = svn_wc__get_tmpdir(&temp_dir, wc_ctx, local_abspath, pool, pool);
  err = svn_error_compose_create(err, svn_wc_context_destroy(wc_ctx));
  if (err)
    return svn_error_trace(err);

  SVN_ERR(svn_io_open_unique_file3(fp, new_name, temp_dir,
                                   delete_when, pool, pool));

  return SVN_NO_ERROR;
}
