
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int DBT ;


 int svn_checksum_size (TYPE_1__*) ;
 int svn_fs_base__set_dbt (int *,int ,int ) ;

DBT *
svn_fs_base__checksum_to_dbt(DBT *dbt, svn_checksum_t *checksum)
{
  svn_fs_base__set_dbt(dbt, checksum->digest, svn_checksum_size(checksum));

  return dbt;
}
