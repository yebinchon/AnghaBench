
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 int svn_hash_sets (int *,char const*,char const*) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
collect_lock_tokens(apr_hash_t **result,
                    apr_hash_t *all_tokens,
                    const char *base_url,
                    apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  *result = apr_hash_make(pool);

  for (hi = apr_hash_first(pool, all_tokens); hi; hi = apr_hash_next(hi))
    {
      const char *url = apr_hash_this_key(hi);
      const char *token = apr_hash_this_val(hi);
      const char *relpath = svn_uri_skip_ancestor(base_url, url, pool);

      if (relpath)
        {
          svn_hash_sets(*result, relpath, token);
        }
    }

  return SVN_NO_ERROR;
}
