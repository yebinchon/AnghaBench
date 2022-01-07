
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_lock_t ;
typedef int apr_pool_t ;


 int * apr_pcalloc (int *,int) ;

svn_lock_t *
svn_lock_create(apr_pool_t *pool)
{
  return apr_pcalloc(pool, sizeof(svn_lock_t));
}
