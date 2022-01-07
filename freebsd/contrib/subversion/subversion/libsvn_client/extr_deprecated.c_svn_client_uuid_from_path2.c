
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int svn_client_get_repos_root (int *,char const**,char const*,int *,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_uuid_from_path2(const char **uuid,
                           const char *local_abspath,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  return svn_error_trace(
      svn_client_get_repos_root(((void*)0), uuid,
                                local_abspath, ctx,
                                result_pool, scratch_pool));
}
