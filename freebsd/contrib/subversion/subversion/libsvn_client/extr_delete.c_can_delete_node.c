
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int cancel_baton; int cancel_func; int wc_ctx; int config; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct can_delete_baton_t {char const* root_abspath; int target_missing; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int find_undeletables ;
 int svn_depth_infinity ;
 int svn_wc_get_default_ignores (int **,int ,int *) ;
 int svn_wc_walk_status (int ,char const*,int ,int ,int ,int ,int *,int ,struct can_delete_baton_t*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
can_delete_node(svn_boolean_t *target_missing,
                const char *local_abspath,
                svn_client_ctx_t *ctx,
                apr_pool_t *scratch_pool)
{
  apr_array_header_t *ignores;
  struct can_delete_baton_t cdt;







  SVN_ERR(svn_wc_get_default_ignores(&ignores, ctx->config, scratch_pool));

  cdt.root_abspath = local_abspath;
  cdt.target_missing = FALSE;

  SVN_ERR(svn_wc_walk_status(ctx->wc_ctx,
                             local_abspath,
                             svn_depth_infinity,
                             FALSE ,
                             FALSE ,
                             FALSE ,
                             ignores,
                             find_undeletables, &cdt,
                             ctx->cancel_func,
                             ctx->cancel_baton,
                             scratch_pool));

  if (target_missing)
    *target_missing = cdt.target_missing;

  return SVN_NO_ERROR;
}
