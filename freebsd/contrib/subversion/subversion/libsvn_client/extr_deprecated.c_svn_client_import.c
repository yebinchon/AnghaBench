
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_commit_info_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_commit_info_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_client_import2 (int **,char const*,char const*,int ,int ,int *,int *) ;
 int * svn_error_trace (int *) ;

svn_error_t *
svn_client_import(svn_client_commit_info_t **commit_info_p,
                  const char *path,
                  const char *url,
                  svn_boolean_t nonrecursive,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  svn_commit_info_t *commit_info = ((void*)0);
  svn_error_t *err;

  err = svn_client_import2(&commit_info,
                           path, url, nonrecursive,
                           FALSE, ctx, pool);

  *commit_info_p = (svn_client_commit_info_t *) commit_info;
  return svn_error_trace(err);
}
