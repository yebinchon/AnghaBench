
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int svn_client_shelf_get_paths (int **,char const*,char const*,int *,int *,int *) ;

svn_error_t *
svn_client_shelf_has_changes(svn_boolean_t *has_changes,
                             const char *name,
                             const char *local_abspath,
                             svn_client_ctx_t *ctx,
                             apr_pool_t *scratch_pool)
{
  apr_hash_t *patch_paths;

  SVN_ERR(svn_client_shelf_get_paths(&patch_paths, name, local_abspath,
                                     ctx, scratch_pool, scratch_pool));
  *has_changes = (apr_hash_count(patch_paths) != 0);
  return SVN_NO_ERROR;
}
