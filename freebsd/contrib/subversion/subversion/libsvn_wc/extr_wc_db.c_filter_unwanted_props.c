
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
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;

__attribute__((used)) static void
filter_unwanted_props(apr_hash_t *prop_hash,
                      const char * propname,
                      apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(scratch_pool, prop_hash);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *ipropname = apr_hash_this_key(hi);

      if (strcmp(ipropname, propname) != 0)
        svn_hash_sets(prop_hash, ipropname, ((void*)0));
    }
  return;
}
