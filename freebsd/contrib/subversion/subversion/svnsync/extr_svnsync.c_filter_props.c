
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* filter_func_t ) (char const*) ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 void* apr_hash_this_val (int *) ;
 int svn_hash_sets (int *,char const*,void*) ;

__attribute__((used)) static apr_hash_t *
filter_props(int *filtered_count, apr_hash_t *props,
             filter_func_t filter,
             apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *filtered = apr_hash_make(pool);
  *filtered_count = 0;

  for (hi = apr_hash_first(pool, props); hi ; hi = apr_hash_next(hi))
    {
      const char *propname = apr_hash_this_key(hi);
      void *propval = apr_hash_this_val(hi);




      if (!filter || !filter(propname))
        {
          svn_hash_sets(filtered, propname, propval);
        }
      else
        {
          *filtered_count += 1;
        }
    }

  return filtered;
}
