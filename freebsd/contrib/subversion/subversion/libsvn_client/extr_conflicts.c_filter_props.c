
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int svn_wc_is_normal_prop (char const*) ;

__attribute__((used)) static void
filter_props(apr_hash_t *props, apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(scratch_pool, props);
       hi != ((void*)0);
       hi = apr_hash_next(hi))
    {
      const char *propname = apr_hash_this_key(hi);

      if (!svn_wc_is_normal_prop(propname))
        svn_hash_sets(props, propname, ((void*)0));
    }
}
