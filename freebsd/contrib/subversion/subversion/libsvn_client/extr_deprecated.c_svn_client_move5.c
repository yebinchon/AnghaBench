
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_commit_info_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct capture_baton_t {int * pool; int ** info; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int capture_commit_info ;
 int * svn_client_move6 (int const*,char const*,int ,int ,int const*,int ,struct capture_baton_t*,int *,int *) ;

svn_error_t *
svn_client_move5(svn_commit_info_t **commit_info_p,
                 const apr_array_header_t *src_paths,
                 const char *dst_path,
                 svn_boolean_t force,
                 svn_boolean_t move_as_child,
                 svn_boolean_t make_parents,
                 const apr_hash_t *revprop_table,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  struct capture_baton_t cb;

  cb.info = commit_info_p;
  cb.pool = pool;

  return svn_client_move6(src_paths, dst_path, move_as_child,
                          make_parents, revprop_table,
                          capture_commit_info, &cb, ctx, pool);
}
