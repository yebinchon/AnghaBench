
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int apr_pool_t ;


 int * svn_wc__internal_transmit_prop_deltas (int ,char const*,int const*,void*,int *) ;

svn_error_t *
svn_wc_transmit_prop_deltas2(svn_wc_context_t *wc_ctx,
                             const char *local_abspath,
                             const svn_delta_editor_t *editor,
                             void *baton,
                             apr_pool_t *scratch_pool)
{
  return svn_wc__internal_transmit_prop_deltas(wc_ctx->db, local_abspath,
                                               editor, baton, scratch_pool);
}
