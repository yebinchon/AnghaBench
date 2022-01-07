
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__internal_get_origin (int *,int *,char const**,char const**,char const**,int *,char const**,int ,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc__node_get_origin(svn_boolean_t *is_copy,
                        svn_revnum_t *revision,
                        const char **repos_relpath,
                        const char **repos_root_url,
                        const char **repos_uuid,
                        svn_depth_t *depth,
                        const char **copy_root_abspath,
                        svn_wc_context_t *wc_ctx,
                        const char *local_abspath,
                        svn_boolean_t scan_deleted,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_wc__internal_get_origin(is_copy, revision,
                           repos_relpath, repos_root_url, repos_uuid,
                           depth, copy_root_abspath,
                           wc_ctx->db, local_abspath, scan_deleted,
                           result_pool, scratch_pool));
}
