
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_hash_sets (int *,int ,int ) ;

__attribute__((used)) static apr_hash_t *
headers_dup(apr_hash_t *headers,
            apr_pool_t *pool)
{
  apr_hash_t *new_hash = apr_hash_make(pool);
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(pool, headers); hi; hi = apr_hash_next(hi))
    {
      const char *key = apr_hash_this_key(hi);
      const char *val = apr_hash_this_val(hi);

      svn_hash_sets(new_hash, apr_pstrdup(pool, key), apr_pstrdup(pool, val));
    }
  return new_hash;
}
