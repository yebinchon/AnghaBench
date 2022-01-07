
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__props_modified (int *,int ,char const*,int *) ;

svn_error_t *
svn_wc_props_modified_p2(svn_boolean_t *modified_p,
                         svn_wc_context_t* wc_ctx,
                         const char *local_abspath,
                         apr_pool_t *scratch_pool)
{
  return svn_error_trace(
             svn_wc__props_modified(modified_p,
                                    wc_ctx->db,
                                    local_abspath,
                                    scratch_pool));
}
