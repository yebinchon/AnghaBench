
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc_check_wc2 (int*,int *,char const*,int *) ;
 int svn_wc_context_create (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;

svn_error_t *
svn_wc_check_wc(const char *path,
                int *wc_format,
                apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  const char *local_abspath;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc_context_create(&wc_ctx, ((void*)0), pool, pool));

  SVN_ERR(svn_wc_check_wc2(wc_format, wc_ctx, local_abspath, pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
