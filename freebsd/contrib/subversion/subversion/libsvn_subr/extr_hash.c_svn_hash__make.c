
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * apr_hash_make_custom (int *,int ) ;
 int hashfunc_compatible ;

apr_hash_t *
svn_hash__make(apr_pool_t *pool)
{
  return apr_hash_make_custom(pool, hashfunc_compatible);
}
