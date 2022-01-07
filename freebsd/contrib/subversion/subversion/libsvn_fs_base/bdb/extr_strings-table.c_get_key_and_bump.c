
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_15__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_16__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_17__ {TYPE_10__* strings; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_18__ {int data; int size; } ;
struct TYPE_14__ {int (* cursor ) (TYPE_10__*,int ,int **,int ) ;} ;
typedef TYPE_4__ DBT ;
typedef int DBC ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_CURRENT ;
 int DB_SET ;
 int MAX_KEY_SIZE ;
 char* NEXT_KEY_KEY ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int stub1 (TYPE_10__*,int ,int **,int ) ;
 int svn_bdb_dbc_close (int *) ;
 int svn_bdb_dbc_get (int *,int ,int ,int ) ;
 int svn_bdb_dbc_put (int *,TYPE_4__*,int ,int ) ;
 int svn_fs_base__next_key (int ,int *,char*) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__str_to_dbt (TYPE_4__*,char*) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

__attribute__((used)) static svn_error_t *
get_key_and_bump(svn_fs_t *fs,
                 const char **key,
                 trail_t *trail,
                 apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBC *cursor;
  char next_key[MAX_KEY_SIZE];
  apr_size_t key_len;
  int db_err;
  DBT query;
  DBT result;
  svn_fs_base__trail_debug(trail, "strings", "cursor");
  SVN_ERR(BDB_WRAP(fs, N_("creating cursor for reading a string"),
                   bfd->strings->cursor(bfd->strings, trail->db_txn,
                                        &cursor, 0)));



  db_err = svn_bdb_dbc_get(cursor,
                           svn_fs_base__str_to_dbt(&query, NEXT_KEY_KEY),
                           svn_fs_base__result_dbt(&result),
                           DB_SET);
  if (db_err)
    {
      svn_bdb_dbc_close(cursor);
      return BDB_WRAP(fs, N_("getting next-key value"), db_err);
    }

  svn_fs_base__track_dbt(&result, pool);
  *key = apr_pstrmemdup(pool, result.data, result.size);


  key_len = result.size;
  svn_fs_base__next_key(result.data, &key_len, next_key);


  db_err = svn_bdb_dbc_put(cursor, &query,
                           svn_fs_base__str_to_dbt(&result, next_key),
                           DB_CURRENT);
  if (db_err)
    {
      svn_bdb_dbc_close(cursor);

      return BDB_WRAP(fs, N_("bumping next string key"), db_err);
    }

  return BDB_WRAP(fs, N_("closing string-reading cursor"),
                  svn_bdb_dbc_close(cursor));
}
