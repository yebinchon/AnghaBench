
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
struct TYPE_6__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct recursive_propget_receiver_baton {int wc_ctx; int * pool; int * props; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_7__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int recursive_propget_receiver ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 int svn_wc__prop_list_recursive (int ,char const*,char const*,scalar_t__,int ,TYPE_2__ const*,int ,struct recursive_propget_receiver_baton*,int ,int ,int *) ;
 int svn_wc__prop_retrieve_recursive (int **,int ,char const*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_prop_from_wc(apr_hash_t **props,
                 const char *propname,
                 const char *target_abspath,
                 svn_boolean_t pristine,
                 svn_node_kind_t kind,
                 svn_depth_t depth,
                 const apr_array_header_t *changelists,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct recursive_propget_receiver_baton rb;






  if (depth == svn_depth_unknown)
    depth = svn_depth_infinity;

  if (!pristine && depth == svn_depth_infinity
      && (!changelists || changelists->nelts == 0))
    {


      SVN_ERR(svn_wc__prop_retrieve_recursive(
                            props, ctx->wc_ctx, target_abspath, propname,
                            result_pool, scratch_pool));
      return SVN_NO_ERROR;
    }

  *props = apr_hash_make(result_pool);
  rb.props = *props;
  rb.pool = result_pool;
  rb.wc_ctx = ctx->wc_ctx;

  SVN_ERR(svn_wc__prop_list_recursive(ctx->wc_ctx, target_abspath,
                                      propname, depth, pristine,
                                      changelists,
                                      recursive_propget_receiver, &rb,
                                      ctx->cancel_func, ctx->cancel_baton,
                                      scratch_pool));

  return SVN_NO_ERROR;
}
