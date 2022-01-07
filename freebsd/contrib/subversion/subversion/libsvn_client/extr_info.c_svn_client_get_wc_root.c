
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int * svn_wc__get_wcroot (char const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_client_get_wc_root(const char **wcroot_abspath,
                       const char *local_abspath,
                       svn_client_ctx_t *ctx,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  return svn_wc__get_wcroot(wcroot_abspath, ctx->wc_ctx, local_abspath,
                            result_pool, scratch_pool);
}
