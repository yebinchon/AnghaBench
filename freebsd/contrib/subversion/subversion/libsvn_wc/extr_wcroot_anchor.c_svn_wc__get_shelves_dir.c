
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_dirent_join (char const*,char*,int *) ;
 int svn_io_make_dir_recursively (char*,int *) ;
 int svn_wc__get_wcroot (char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__get_shelves_dir(char **dir,
                        svn_wc_context_t *wc_ctx,
                        const char *local_abspath,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *wcroot_abspath;

  SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath, wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));
  *dir = svn_dirent_join(wcroot_abspath, ".svn/shelves", result_pool);


  SVN_ERR(svn_io_make_dir_recursively(*dir, scratch_pool));

  return SVN_NO_ERROR;
}
