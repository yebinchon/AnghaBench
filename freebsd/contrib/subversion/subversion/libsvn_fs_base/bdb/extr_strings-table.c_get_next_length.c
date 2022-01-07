
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ apr_size_t ;
struct TYPE_6__ {int flags; scalar_t__ size; scalar_t__ ulen; } ;
typedef TYPE_1__ DBT ;
typedef int DBC ;


 int DB_DBT_PARTIAL ;
 int DB_DBT_USERMEM ;
 int DB_NEXT_DUP ;
 int SVN_BDB_DB_BUFFER_SMALL ;
 int svn_bdb_dbc_close (int *) ;
 int svn_bdb_dbc_get (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int svn_fs_base__clear_dbt (TYPE_1__*) ;

__attribute__((used)) static int
get_next_length(apr_size_t *length, DBC *cursor, DBT *query)
{
  DBT result;
  int db_err;


  svn_fs_base__clear_dbt(&result);
  result.ulen = 0;
  result.flags |= DB_DBT_USERMEM;



  db_err = svn_bdb_dbc_get(cursor, query, &result, DB_NEXT_DUP);


  if (db_err)
    {
      DBT rerun;

      if (db_err != SVN_BDB_DB_BUFFER_SMALL)
        {
          svn_bdb_dbc_close(cursor);
          return db_err;
        }




      svn_fs_base__clear_dbt(&rerun);
      rerun.flags |= DB_DBT_USERMEM | DB_DBT_PARTIAL;
      db_err = svn_bdb_dbc_get(cursor, query, &rerun, DB_NEXT_DUP);
      if (db_err)
        svn_bdb_dbc_close(cursor);
    }


  *length = (apr_size_t) result.size;
  return db_err;
}
