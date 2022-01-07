
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_proplist_item_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct proplist_receiver_baton {int * pool; int * props; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_DEPTH_INFINITY_OR_EMPTY (int ) ;
 int * apr_array_make (int *,int,int) ;
 int proplist_receiver_cb ;
 int * svn_client_proplist3 (char const*,int const*,int const*,int ,int *,int ,struct proplist_receiver_baton*,int *,int *) ;

svn_error_t *
svn_client_proplist2(apr_array_header_t **props,
                     const char *target,
                     const svn_opt_revision_t *peg_revision,
                     const svn_opt_revision_t *revision,
                     svn_boolean_t recurse,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *pool)
{
  struct proplist_receiver_baton pl_baton;

  *props = apr_array_make(pool, 5, sizeof(svn_client_proplist_item_t *));
  pl_baton.props = *props;
  pl_baton.pool = pool;

  return svn_client_proplist3(target, peg_revision, revision,
                              SVN_DEPTH_INFINITY_OR_EMPTY(recurse), ((void*)0),
                              proplist_receiver_cb, &pl_baton, ctx, pool);
}
