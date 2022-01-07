
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_fs_id_t ;
typedef int apr_pool_t ;
typedef int DBT ;


 TYPE_1__* svn_fs_base__id_unparse (int const*,int *) ;
 int svn_fs_base__set_dbt (int *,int ,int ) ;

DBT *
svn_fs_base__id_to_dbt(DBT *dbt,
                       const svn_fs_id_t *id,
                       apr_pool_t *pool)
{
  svn_string_t *unparsed_id = svn_fs_base__id_unparse(id, pool);
  svn_fs_base__set_dbt(dbt, unparsed_id->data, unparsed_id->len);
  return dbt;
}
