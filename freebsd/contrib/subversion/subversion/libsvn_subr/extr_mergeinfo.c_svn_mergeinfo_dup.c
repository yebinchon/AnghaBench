
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_mergeinfo_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int ,int ,int ,int ) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_key_len (int *) ;
 int * apr_hash_this_val (int *) ;
 int apr_pstrmemdup (int *,char const*,int ) ;
 int svn_hash__make (int *) ;
 int svn_rangelist_dup (int *,int *) ;

svn_mergeinfo_t
svn_mergeinfo_dup(svn_mergeinfo_t mergeinfo, apr_pool_t *pool)
{
  svn_mergeinfo_t new_mergeinfo = svn_hash__make(pool);
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(pool, mergeinfo); hi; hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      apr_ssize_t pathlen = apr_hash_this_key_len(hi);
      svn_rangelist_t *rangelist = apr_hash_this_val(hi);

      apr_hash_set(new_mergeinfo, apr_pstrmemdup(pool, path, pathlen), pathlen,
                   svn_rangelist_dup(rangelist, pool));
    }

  return new_mergeinfo;
}
