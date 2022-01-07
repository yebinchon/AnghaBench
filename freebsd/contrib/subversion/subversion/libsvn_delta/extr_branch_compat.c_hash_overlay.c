
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_copy (int *,int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_pool_get (int *) ;
 int apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 int svn_hash_sets (int *,int ,int ) ;

__attribute__((used)) static apr_hash_t *
hash_overlay(apr_hash_t *overlay,
             apr_hash_t *base)
{
  apr_pool_t *pool = apr_hash_pool_get(base);
  apr_hash_t *result = apr_hash_copy(pool, base);
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(pool, overlay); hi; hi = apr_hash_next(hi))
    {
      svn_hash_sets(result, apr_hash_this_key(hi), apr_hash_this_val(hi));
    }
  return result;
}
