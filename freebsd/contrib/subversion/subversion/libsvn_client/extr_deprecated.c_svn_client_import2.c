
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_commit_info_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_DEPTH_INFINITY_OR_FILES (int) ;
 int * svn_client_import3 (int **,char const*,char const*,int ,int ,int ,int *,int *,int *) ;

svn_error_t *
svn_client_import2(svn_commit_info_t **commit_info_p,
                   const char *path,
                   const char *url,
                   svn_boolean_t nonrecursive,
                   svn_boolean_t no_ignore,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  return svn_client_import3(commit_info_p,
                            path, url,
                            SVN_DEPTH_INFINITY_OR_FILES(! nonrecursive),
                            no_ignore, FALSE, ((void*)0), ctx, pool);
}
