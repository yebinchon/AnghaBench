
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_commit_info_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_commit_info_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * svn_client_mkdir2 (int **,int const*,int *,int *) ;
 int * svn_error_trace (int *) ;

svn_error_t *
svn_client_mkdir(svn_client_commit_info_t **commit_info_p,
                 const apr_array_header_t *paths,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  svn_commit_info_t *commit_info = ((void*)0);
  svn_error_t *err;

  err = svn_client_mkdir2(&commit_info, paths, ctx, pool);

  *commit_info_p = (svn_client_commit_info_t *) commit_info;
  return svn_error_trace(err);
}
