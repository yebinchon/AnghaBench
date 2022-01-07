
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_hash_sets (int *,int ,char*) ;
 int svn_relpath_basename (char const*,int *) ;
 int svn_relpath_dirname (char const*,int *) ;

__attribute__((used)) static apr_hash_t *
get_immediate_children_names(apr_hash_t *paths,
                             const char *parent_rrpath,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  apr_hash_t *children = apr_hash_make(result_pool);
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(scratch_pool, paths); hi; hi = apr_hash_next(hi))
    {
      const char *this_rrpath = apr_hash_this_key(hi);

      if (this_rrpath[0]
          && strcmp(parent_rrpath, svn_relpath_dirname(this_rrpath,
                                                       scratch_pool)) == 0)
        {
          svn_hash_sets(children,
                        svn_relpath_basename(this_rrpath, result_pool), "");
        }
    }

  return children;
}
