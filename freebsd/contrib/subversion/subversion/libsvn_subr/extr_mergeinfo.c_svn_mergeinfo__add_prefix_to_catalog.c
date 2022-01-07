
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_t ;
typedef int svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 int svn_dirent_join (char const*,char const*,int *) ;
 int svn_hash_sets (int ,int ,int ) ;

svn_error_t *
svn_mergeinfo__add_prefix_to_catalog(svn_mergeinfo_catalog_t *out_catalog,
                                     svn_mergeinfo_catalog_t in_catalog,
                                     const char *prefix_path,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  *out_catalog = apr_hash_make(result_pool);

  for (hi = apr_hash_first(scratch_pool, in_catalog);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *original_path = apr_hash_this_key(hi);
      svn_mergeinfo_t value = apr_hash_this_val(hi);

      if (original_path[0] == '/')
        original_path++;

      svn_hash_sets(*out_catalog,
                    svn_dirent_join(prefix_path, original_path, result_pool),
                    value);
    }

  return SVN_NO_ERROR;
}
