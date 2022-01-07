
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_wc_traversal_info_t {int depths; int externals_new; int externals_old; int pool; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 char* svn_dirent_join (char const*,int ,int ) ;
 int svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int ,char const*,int ) ;
 int svn_wc__externals_gather_definitions (int **,int **,int *,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
gather_traversal_info(svn_wc_context_t *wc_ctx,
                      const char *local_abspath,
                      const char *path,
                      svn_depth_t depth,
                      struct svn_wc_traversal_info_t *traversal_info,
                      svn_boolean_t gather_as_old,
                      svn_boolean_t gather_as_new,
                      apr_pool_t *scratch_pool)
{
  apr_hash_t *externals;
  apr_hash_t *ambient_depths;
  apr_hash_index_t *hi;

  SVN_ERR(svn_wc__externals_gather_definitions(&externals, &ambient_depths,
                                               wc_ctx, local_abspath,
                                               depth,
                                               scratch_pool, scratch_pool));

  for (hi = apr_hash_first(scratch_pool, externals);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *node_abspath = apr_hash_this_key(hi);
      const char *relpath;

      relpath = svn_dirent_join(path,
                                svn_dirent_skip_ancestor(local_abspath,
                                                         node_abspath),
                                traversal_info->pool);

      if (gather_as_old)
        svn_hash_sets(traversal_info->externals_old, relpath,
                      apr_hash_this_val(hi));

      if (gather_as_new)
        svn_hash_sets(traversal_info->externals_new, relpath,
                      apr_hash_this_val(hi));

      svn_hash_sets(traversal_info->depths, relpath,
                    svn_hash_gets(ambient_depths, node_abspath));
    }

  return SVN_NO_ERROR;
}
