
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int apr_pool_t ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ DBT ;


 int apr_free_cleanup ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,scalar_t__,int ,int ) ;

DBT *
svn_fs_base__track_dbt(DBT *dbt, apr_pool_t *pool)
{
  if (dbt->data)
    apr_pool_cleanup_register(pool, dbt->data, apr_free_cleanup,
                              apr_pool_cleanup_null);

  return dbt;
}
