
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_commit_info_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct capture_baton_t {int * pool; int ** info; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int capture_commit_info ;
 int * svn_client_import4 (char const*,char const*,int ,int ,int ,int const*,int ,struct capture_baton_t*,int *,int *) ;

svn_error_t *
svn_client_import3(svn_commit_info_t **commit_info_p,
                   const char *path,
                   const char *url,
                   svn_depth_t depth,
                   svn_boolean_t no_ignore,
                   svn_boolean_t ignore_unknown_node_types,
                   const apr_hash_t *revprop_table,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  struct capture_baton_t cb;

  cb.info = commit_info_p;
  cb.pool = pool;

  return svn_client_import4(path, url, depth, no_ignore,
                            ignore_unknown_node_types, revprop_table,
                            capture_commit_info, &cb, ctx, pool);
}
