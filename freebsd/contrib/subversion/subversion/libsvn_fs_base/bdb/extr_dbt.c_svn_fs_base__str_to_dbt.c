
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBT ;


 int strlen (char const*) ;
 int svn_fs_base__set_dbt (int *,char const*,int ) ;

DBT *
svn_fs_base__str_to_dbt(DBT *dbt, const char *str)
{
  svn_fs_base__set_dbt(dbt, str, strlen(str));
  return dbt;
}
