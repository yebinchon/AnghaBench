
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int access_cache; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int ) ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 scalar_t__ is_immediate_child_path (char const*,char const*) ;
 int remove_from_access_cache (int ,char const*) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_infinity ;
 char* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_dirent_is_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_error_t *
flush_entries(svn_wc__db_wcroot_t *wcroot,
              const char *local_abspath,
              svn_depth_t depth,
              apr_pool_t *scratch_pool)
{
  const char *parent_abspath;

  if (apr_hash_count(wcroot->access_cache) == 0)
    return SVN_NO_ERROR;

  remove_from_access_cache(wcroot->access_cache, local_abspath);

  if (depth > svn_depth_empty)
    {
      apr_hash_index_t *hi;


      for (hi = apr_hash_first(scratch_pool, wcroot->access_cache);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *item_abspath = apr_hash_this_key(hi);

          if ((depth == svn_depth_files || depth == svn_depth_immediates) &&
              is_immediate_child_path(local_abspath, item_abspath))
            {
              remove_from_access_cache(wcroot->access_cache, item_abspath);
            }
          else if (depth == svn_depth_infinity &&
                   svn_dirent_is_ancestor(local_abspath, item_abspath))
            {
              remove_from_access_cache(wcroot->access_cache, item_abspath);
            }
        }
    }




  parent_abspath = svn_dirent_dirname(local_abspath, scratch_pool);
  remove_from_access_cache(wcroot->access_cache, parent_abspath);

  return SVN_NO_ERROR;
}
