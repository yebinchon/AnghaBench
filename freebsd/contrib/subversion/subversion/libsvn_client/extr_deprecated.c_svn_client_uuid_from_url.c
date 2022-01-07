
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int * svn_client_get_repos_root (int *,char const**,char const*,int *,int *,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_client_uuid_from_url(const char **uuid,
                         const char *url,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *pool)
{
  svn_error_t *err;
  apr_pool_t *subpool = svn_pool_create(pool);

  err = svn_client_get_repos_root(((void*)0), uuid, url,
                                  ctx, pool, subpool);

  svn_pool_destroy(subpool);

  return svn_error_trace(err);
}
