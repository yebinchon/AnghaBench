
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int svn_wc_context_create (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_get_actual_target2 (char const**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc_get_actual_target(const char *path,
                         const char **anchor,
                         const char **target,
                         apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;

  SVN_ERR(svn_wc_context_create(&wc_ctx, ((void*)0), pool, pool));
  SVN_ERR(svn_wc_get_actual_target2(anchor, target, wc_ctx, path, pool, pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
