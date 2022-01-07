
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int ) ;
 int * apr_hash_first (int *,int ) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_mergeinfo__filter_mergeinfo_by_ranges (int *,int ,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_mergeinfo__filter_catalog_by_ranges(svn_mergeinfo_catalog_t *filtered_cat,
                                        svn_mergeinfo_catalog_t catalog,
                                        svn_revnum_t youngest_rev,
                                        svn_revnum_t oldest_rev,
                                        svn_boolean_t include_range,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  *filtered_cat = apr_hash_make(result_pool);
  for (hi = apr_hash_first(scratch_pool, catalog);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      svn_mergeinfo_t mergeinfo = apr_hash_this_val(hi);
      svn_mergeinfo_t filtered_mergeinfo;

      SVN_ERR(svn_mergeinfo__filter_mergeinfo_by_ranges(&filtered_mergeinfo,
                                                        mergeinfo,
                                                        youngest_rev,
                                                        oldest_rev,
                                                        include_range,
                                                        result_pool,
                                                        scratch_pool));
      if (apr_hash_count(filtered_mergeinfo))
        svn_hash_sets(*filtered_cat,
                      apr_pstrdup(result_pool, path), filtered_mergeinfo);
    }

  return SVN_NO_ERROR;
}
