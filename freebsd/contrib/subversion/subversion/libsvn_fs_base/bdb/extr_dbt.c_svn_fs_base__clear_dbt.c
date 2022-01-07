
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBT ;


 int memset (int *,int ,int) ;

DBT *
svn_fs_base__clear_dbt(DBT *dbt)
{
  memset(dbt, 0, sizeof(*dbt));

  return dbt;
}
