
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_changelist_receiver_t ;
typedef int svn_cancel_func_t ;
struct get_cl_fn_baton {int * clhash; void* callback_baton; int callback_func; int db; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int get_node_changelist ;
 int * svn_error_trace (int ) ;
 int svn_hash_from_cstring_keys (int **,int const*,int *) ;
 int svn_wc__internal_walk_children (int ,char const*,int ,int const*,int ,struct get_cl_fn_baton*,int ,int ,void*,int *) ;

svn_error_t *
svn_wc_get_changelists(svn_wc_context_t *wc_ctx,
                       const char *local_abspath,
                       svn_depth_t depth,
                       const apr_array_header_t *changelist_filter,
                       svn_changelist_receiver_t callback_func,
                       void *callback_baton,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  struct get_cl_fn_baton gnb;

  gnb.db = wc_ctx->db;
  gnb.clhash = ((void*)0);
  gnb.callback_func = callback_func;
  gnb.callback_baton = callback_baton;

  if (changelist_filter)
    SVN_ERR(svn_hash_from_cstring_keys(&gnb.clhash, changelist_filter,
                                       scratch_pool));

  return svn_error_trace(
    svn_wc__internal_walk_children(wc_ctx->db, local_abspath, FALSE,
                                   changelist_filter, get_node_changelist,
                                   &gnb, depth,
                                   cancel_func, cancel_baton,
                                   scratch_pool));

}
