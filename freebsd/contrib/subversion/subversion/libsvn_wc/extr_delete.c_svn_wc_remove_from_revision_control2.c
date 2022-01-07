
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int remove_from_revision_status_callback ;
 int svn_depth_infinity ;
 int * svn_error_trace (int ) ;
 int svn_wc__internal_remove_from_revision_control (int ,char const*,scalar_t__,int ,void*,int *) ;
 int svn_wc_walk_status (TYPE_1__*,char const*,int ,int ,int ,int ,int *,int ,int *,int ,void*,int *) ;

svn_error_t *
svn_wc_remove_from_revision_control2(svn_wc_context_t *wc_ctx,
                                    const char *local_abspath,
                                    svn_boolean_t destroy_wf,
                                    svn_boolean_t instant_error,
                                    svn_cancel_func_t cancel_func,
                                    void *cancel_baton,
                                    apr_pool_t *scratch_pool)
{
  if (instant_error)
    {
      SVN_ERR(svn_wc_walk_status(wc_ctx, local_abspath, svn_depth_infinity,
                                 FALSE, FALSE, FALSE, ((void*)0),
                                 remove_from_revision_status_callback, ((void*)0),
                                 cancel_func, cancel_baton,
                                 scratch_pool));
    }
  return svn_error_trace(
      svn_wc__internal_remove_from_revision_control(wc_ctx->db,
                                                    local_abspath,
                                                    destroy_wf,
                                                    cancel_func,
                                                    cancel_baton,
                                                    scratch_pool));
}
