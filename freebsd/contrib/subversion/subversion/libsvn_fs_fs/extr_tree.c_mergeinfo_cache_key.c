
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_mergeinfo_inheritance_t ;
struct TYPE_3__ {int rev; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 char const* svn_fs_fs__combine_number_and_string (int,char const*,int *) ;
 scalar_t__ svn_mergeinfo_nearest_ancestor ;

__attribute__((used)) static const char *
mergeinfo_cache_key(const char *path,
                    svn_fs_root_t *rev_root,
                    svn_mergeinfo_inheritance_t inherit,
                    svn_boolean_t adjust_inherited_mergeinfo,
                    apr_pool_t *pool)
{
  apr_int64_t number = rev_root->rev;
  number = number * 4
         + (inherit == svn_mergeinfo_nearest_ancestor ? 2 : 0)
         + (adjust_inherited_mergeinfo ? 1 : 0);

  return svn_fs_fs__combine_number_and_string(number, path, pool);
}
