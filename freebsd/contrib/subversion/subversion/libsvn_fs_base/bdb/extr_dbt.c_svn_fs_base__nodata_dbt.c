
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ dlen; scalar_t__ doff; } ;
typedef TYPE_1__ DBT ;


 int DB_DBT_PARTIAL ;
 int DB_DBT_USERMEM ;
 int svn_fs_base__clear_dbt (TYPE_1__*) ;

DBT *svn_fs_base__nodata_dbt(DBT *dbt)
{
  svn_fs_base__clear_dbt(dbt);



  dbt->flags |= (DB_DBT_USERMEM | DB_DBT_PARTIAL);
  dbt->doff = dbt->dlen = 0;

  return dbt;
}
