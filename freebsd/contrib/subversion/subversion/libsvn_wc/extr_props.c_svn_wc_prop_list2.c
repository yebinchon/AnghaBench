
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__get_actual_props (int **,int ,char const*,int *,int *) ;

svn_error_t *
svn_wc_prop_list2(apr_hash_t **props,
                  svn_wc_context_t *wc_ctx,
                  const char *local_abspath,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_wc__get_actual_props(props,
                                                  wc_ctx->db,
                                                  local_abspath,
                                                  result_pool,
                                                  scratch_pool));
}
