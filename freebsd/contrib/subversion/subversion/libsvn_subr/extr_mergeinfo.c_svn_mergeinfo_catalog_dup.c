
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_t ;
typedef int svn_mergeinfo_catalog_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_mergeinfo_dup (int ,int *) ;

svn_mergeinfo_catalog_t
svn_mergeinfo_catalog_dup(svn_mergeinfo_catalog_t mergeinfo_catalog,
                          apr_pool_t *pool)
{
  svn_mergeinfo_t new_mergeinfo_catalog = apr_hash_make(pool);
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(pool, mergeinfo_catalog);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *key = apr_hash_this_key(hi);
      svn_mergeinfo_t val = apr_hash_this_val(hi);

      svn_hash_sets(new_mergeinfo_catalog, apr_pstrdup(pool, key),
                    svn_mergeinfo_dup(val, pool));
    }

  return new_mergeinfo_catalog;
}
