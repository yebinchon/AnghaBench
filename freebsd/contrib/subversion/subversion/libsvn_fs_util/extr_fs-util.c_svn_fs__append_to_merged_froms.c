
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int svn_fspath__join (char const*,char const*,int *) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_rangelist_dup (int *,int *) ;

svn_error_t *
svn_fs__append_to_merged_froms(svn_mergeinfo_t *output,
                               svn_mergeinfo_t input,
                               const char *rel_path,
                               apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  *output = apr_hash_make(pool);
  for (hi = apr_hash_first(pool, input); hi; hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      svn_rangelist_t *rangelist = apr_hash_this_val(hi);

      svn_hash_sets(*output,
                    svn_fspath__join(path, rel_path, pool),
                    svn_rangelist_dup(rangelist, pool));
    }

  return SVN_NO_ERROR;
}
