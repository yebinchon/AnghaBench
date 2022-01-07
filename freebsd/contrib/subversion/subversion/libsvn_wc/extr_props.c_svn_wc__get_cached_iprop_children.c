
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_get_children_with_cached_iprops (int **,int ,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc__get_cached_iprop_children(apr_hash_t **iprop_paths,
                                  svn_depth_t depth,
                                  svn_wc_context_t *wc_ctx,
                                  const char *local_abspath,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_wc__db_get_children_with_cached_iprops(iprop_paths,
                                                     depth,
                                                     local_abspath,
                                                     wc_ctx->db,
                                                     result_pool,
                                                     scratch_pool));
  return SVN_NO_ERROR;
}
