
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__db_read_inherited_props (int **,int *,int ,char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc__get_iprops(apr_array_header_t **inherited_props,
                   svn_wc_context_t *wc_ctx,
                   const char *local_abspath,
                   const char *propname,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  return svn_error_trace(
            svn_wc__db_read_inherited_props(inherited_props, ((void*)0),
                                            wc_ctx->db, local_abspath,
                                            propname,
                                            result_pool, scratch_pool));
}
