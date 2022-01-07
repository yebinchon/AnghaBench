
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_boolean_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_get (int *,char const*,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int svn_string_compare (int *,int *) ;

svn_boolean_t
svn_fs__prop_lists_equal(apr_hash_t *a,
                         apr_hash_t *b,
                         apr_pool_t *pool)
{
  apr_hash_index_t *hi;


  if (a == b)
    return TRUE;

  if (a == ((void*)0))
    return apr_hash_count(b) == 0;
  if (b == ((void*)0))
    return apr_hash_count(a) == 0;

  if (apr_hash_count(a) != apr_hash_count(b))
    return FALSE;


  for (hi = apr_hash_first(pool, a); hi; hi = apr_hash_next(hi))
    {
      const char *key;
      apr_ssize_t klen;
      svn_string_t *val_a, *val_b;

      apr_hash_this(hi, (const void **)&key, &klen, (void **)&val_a);
      val_b = apr_hash_get(b, key, klen);

      if (!val_b || !svn_string_compare(val_a, val_b))
        return FALSE;
    }


  return TRUE;
}
