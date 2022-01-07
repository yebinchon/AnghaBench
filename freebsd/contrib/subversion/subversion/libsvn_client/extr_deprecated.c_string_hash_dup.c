
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,char const*,int ,int *) ;
 int apr_hash_this_key (int *) ;
 int apr_hash_this_key_len (int *) ;
 int apr_hash_this_val (int *) ;
 char* apr_pstrdup (int *,int ) ;
 int * svn_string_dup (int ,int *) ;

__attribute__((used)) static apr_hash_t *
string_hash_dup(apr_hash_t *hash, apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *new_hash = apr_hash_make(pool);

  for (hi = apr_hash_first(pool, hash); hi; hi = apr_hash_next(hi))
    {
      const char *key = apr_pstrdup(pool, apr_hash_this_key(hi));
      apr_ssize_t klen = apr_hash_this_key_len(hi);
      svn_string_t *val = svn_string_dup(apr_hash_this_val(hi), pool);

      apr_hash_set(new_hash, key, klen, val);
    }
  return new_hash;
}
