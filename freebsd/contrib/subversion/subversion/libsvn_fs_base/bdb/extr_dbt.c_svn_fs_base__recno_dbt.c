
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int db_recno_t ;
struct TYPE_5__ {int flags; int size; int ulen; } ;
typedef TYPE_1__ DBT ;


 int DB_DBT_USERMEM ;
 int svn_fs_base__set_dbt (TYPE_1__*,int *,int) ;

DBT *
svn_fs_base__recno_dbt(DBT *dbt, db_recno_t *recno)
{
  svn_fs_base__set_dbt(dbt, recno, sizeof(*recno));
  dbt->ulen = dbt->size;
  dbt->flags |= DB_DBT_USERMEM;

  return dbt;
}
