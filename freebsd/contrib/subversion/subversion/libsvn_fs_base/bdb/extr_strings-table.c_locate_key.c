
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_15__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_16__ {TYPE_9__* strings; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_18__ {int (* cursor ) (TYPE_9__*,int ,int **,int ) ;} ;
struct TYPE_17__ {int flags; scalar_t__ size; scalar_t__ data; scalar_t__ ulen; } ;
typedef TYPE_4__ DBT ;
typedef int DBC ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_DBT_PARTIAL ;
 int DB_DBT_USERMEM ;
 int DB_NOTFOUND ;
 int DB_SET ;
 int N_ (char*) ;
 int SVN_BDB_DB_BUFFER_SMALL ;
 int SVN_ERR (int *) ;
 int SVN_ERR_FS_NO_SUCH_STRING ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_9__*,int ,int **,int ) ;
 int svn_bdb_dbc_close (int *) ;
 int svn_bdb_dbc_get (int *,TYPE_4__*,TYPE_4__*,int ) ;
 int * svn_error_createf (int ,int ,char*,char const*) ;
 int svn_fs_base__clear_dbt (TYPE_4__*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

__attribute__((used)) static svn_error_t *
locate_key(apr_size_t *length,
           DBC **cursor,
           DBT *query,
           svn_fs_t *fs,
           trail_t *trail,
           apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  DBT result;

  svn_fs_base__trail_debug(trail, "strings", "cursor");
  SVN_ERR(BDB_WRAP(fs, N_("creating cursor for reading a string"),
                   bfd->strings->cursor(bfd->strings, trail->db_txn,
                                        cursor, 0)));


  svn_fs_base__clear_dbt(&result);
  result.ulen = 0;
  result.flags |= DB_DBT_USERMEM;


  db_err = svn_bdb_dbc_get(*cursor, query, &result, DB_SET);





  if (db_err == DB_NOTFOUND)
    {
      svn_bdb_dbc_close(*cursor);
      return svn_error_createf
        (SVN_ERR_FS_NO_SUCH_STRING, 0,
         "No such string '%s'", (const char *)query->data);
    }
  if (db_err)
    {
      DBT rerun;

      if (db_err != SVN_BDB_DB_BUFFER_SMALL)
        {
          svn_bdb_dbc_close(*cursor);
          return BDB_WRAP(fs, N_("moving cursor"), db_err);
        }




      svn_fs_base__clear_dbt(&rerun);
      rerun.flags |= DB_DBT_USERMEM | DB_DBT_PARTIAL;
      db_err = svn_bdb_dbc_get(*cursor, query, &rerun, DB_SET);
      if (db_err)
        {
          svn_bdb_dbc_close(*cursor);
          return BDB_WRAP(fs, N_("rerunning cursor move"), db_err);
        }
    }


  *length = (apr_size_t) result.size;

  return SVN_NO_ERROR;
}
