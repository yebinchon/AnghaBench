
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 scalar_t__ svn_dirent_is_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_boolean_t
path_is_subtree(const char *local_abspath,
                apr_hash_t *subtrees,
                apr_pool_t *pool)
{
  if (subtrees)
    {
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(pool, subtrees);
           hi; hi = apr_hash_next(hi))
        {
          const char *path_touched_by_merge = apr_hash_this_key(hi);
          if (svn_dirent_is_ancestor(local_abspath, path_touched_by_merge))
            return TRUE;
        }
    }
  return FALSE;
}
