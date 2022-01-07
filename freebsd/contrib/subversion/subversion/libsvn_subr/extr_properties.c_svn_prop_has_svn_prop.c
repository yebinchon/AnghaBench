
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 scalar_t__ svn_prop_is_svn_prop (char const*) ;

svn_boolean_t
svn_prop_has_svn_prop(const apr_hash_t *props, apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  if (! props)
    return FALSE;

  for (hi = apr_hash_first(pool, (apr_hash_t *)props); hi;
       hi = apr_hash_next(hi))
    {
      const char *prop_name = apr_hash_this_key(hi);

      if (svn_prop_is_svn_prop(prop_name))
        return TRUE;
    }

  return FALSE;
}
