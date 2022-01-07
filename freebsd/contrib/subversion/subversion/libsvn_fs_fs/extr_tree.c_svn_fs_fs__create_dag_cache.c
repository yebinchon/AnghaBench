
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ fs_fs_dag_cache_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_pool_create (int *) ;

fs_fs_dag_cache_t*
svn_fs_fs__create_dag_cache(apr_pool_t *pool)
{
  fs_fs_dag_cache_t *result = apr_pcalloc(pool, sizeof(*result));
  result->pool = svn_pool_create(pool);

  return result;
}
