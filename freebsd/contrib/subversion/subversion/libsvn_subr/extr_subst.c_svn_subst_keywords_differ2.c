
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 unsigned int apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_get (int *,void const*,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int svn_string_compare (int *,int *) ;

svn_boolean_t
svn_subst_keywords_differ2(apr_hash_t *a,
                           apr_hash_t *b,
                           svn_boolean_t compare_values,
                           apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  unsigned int a_count, b_count;



  a_count = (a == ((void*)0)) ? 0 : apr_hash_count(a);
  b_count = (b == ((void*)0)) ? 0 : apr_hash_count(b);

  if (a_count != b_count)
    return TRUE;

  if (a_count == 0)
    return FALSE;



  for (hi = apr_hash_first(pool, a); hi; hi = apr_hash_next(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *void_a_val;
      svn_string_t *a_val, *b_val;

      apr_hash_this(hi, &key, &klen, &void_a_val);
      a_val = void_a_val;
      b_val = apr_hash_get(b, key, klen);

      if (!b_val || (compare_values && !svn_string_compare(a_val, b_val)))
        return TRUE;
    }

  return FALSE;
}
