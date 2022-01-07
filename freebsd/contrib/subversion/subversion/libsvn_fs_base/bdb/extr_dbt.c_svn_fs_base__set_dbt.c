
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_5__ {scalar_t__ size; void* data; } ;
typedef TYPE_1__ DBT ;


 int svn_fs_base__clear_dbt (TYPE_1__*) ;

DBT *
svn_fs_base__set_dbt(DBT *dbt, const void *data, apr_size_t size)
{
  svn_fs_base__clear_dbt(dbt);

  dbt->data = (void *) data;
  dbt->size = (u_int32_t) size;

  return dbt;
}
