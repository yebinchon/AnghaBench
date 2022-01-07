
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int normalize_string (int const**,scalar_t__*,char const*,int *,int *) ;
 int svn_hash_sets (int *,char const*,int const*) ;
 scalar_t__ svn_prop_needs_translation (char const*) ;

svn_error_t *
svnsync_normalize_revprops(apr_hash_t *rev_props,
                           int *normalized_count,
                           const char *source_prop_encoding,
                           apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  *normalized_count = 0;

  for (hi = apr_hash_first(pool, rev_props);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *propname = apr_hash_this_key(hi);
      const svn_string_t *propval = apr_hash_this_val(hi);

      if (svn_prop_needs_translation(propname))
        {
          svn_boolean_t was_normalized;
          SVN_ERR(normalize_string(&propval, &was_normalized,
                  source_prop_encoding, pool, pool));


          svn_hash_sets(rev_props, propname, propval);

          if (was_normalized)
            (*normalized_count)++;
        }
    }
  return SVN_NO_ERROR;
}
