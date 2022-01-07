
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
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int collect_ignore_patterns (int **,int ,char const*,int *,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc_get_default_ignores (int **,int *,int *) ;

svn_error_t *
svn_wc_get_ignores2(apr_array_header_t **patterns,
                    svn_wc_context_t *wc_ctx,
                    const char *local_abspath,
                    apr_hash_t *config,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  apr_array_header_t *default_ignores;

  SVN_ERR(svn_wc_get_default_ignores(&default_ignores, config, scratch_pool));
  return svn_error_trace(collect_ignore_patterns(patterns, wc_ctx->db,
                                                 local_abspath,
                                                 default_ignores,
                                                 result_pool, scratch_pool));
}
