
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int svn_hash_sets (int *,char const*,int const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_repos__normalize_prop (int const**,int *,char const*,int const*,int *,int *) ;

svn_error_t *
svn_rdump__normalize_props(apr_hash_t **normal_props,
                           apr_hash_t *props,
                           apr_pool_t *result_pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  *normal_props = apr_hash_make(result_pool);

  iterpool = svn_pool_create(result_pool);
  for (hi = apr_hash_first(result_pool, props); hi;
        hi = apr_hash_next(hi))
    {
      const char *key = apr_hash_this_key(hi);
      const svn_string_t *value = apr_hash_this_val(hi);

      svn_pool_clear(iterpool);

      SVN_ERR(svn_repos__normalize_prop(&value, ((void*)0), key, value,
                                        result_pool, iterpool));
      svn_hash_sets(*normal_props, key, value);
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
