
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,scalar_t__) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 void* apr_hash_this_val (int *) ;
 int svn_hash_sets (int *,int ,void*) ;
 int svn_path_url_add_component2 (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
mergeinfo_relpaths_to_urls(apr_hash_t **out_mergeinfo,
                           svn_mergeinfo_t mergeinfo,
                           const char *repos_root_url,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  *out_mergeinfo = ((void*)0);
  if (mergeinfo)
    {
      apr_hash_index_t *hi;
      apr_hash_t *full_path_mergeinfo = apr_hash_make(result_pool);

      for (hi = apr_hash_first(scratch_pool, mergeinfo);
           hi; hi = apr_hash_next(hi))
        {
          const char *key = apr_hash_this_key(hi);
          void *val = apr_hash_this_val(hi);

          svn_hash_sets(full_path_mergeinfo,
                        svn_path_url_add_component2(repos_root_url, key + 1,
                                                    result_pool),
                        val);
        }
      *out_mergeinfo = full_path_mergeinfo;
    }

  return SVN_NO_ERROR;
}
