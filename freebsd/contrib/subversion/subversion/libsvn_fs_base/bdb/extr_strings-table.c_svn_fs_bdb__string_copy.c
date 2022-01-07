
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_13__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_14__ {TYPE_7__* strings; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_15__ {int (* cursor ) (TYPE_7__*,int ,int **,int ) ;int (* put ) (TYPE_7__*,int ,int *,int *,int ) ;} ;
typedef int DBT ;
typedef int DBC ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NEXT_DUP ;
 int DB_NOTFOUND ;
 int DB_SET ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 char* apr_pstrdup (int *,char const*) ;
 int * get_key_and_bump (TYPE_2__*,char const**,TYPE_1__*,int *) ;
 int stub1 (TYPE_7__*,int ,int **,int ) ;
 int stub2 (TYPE_7__*,int ,int *,int *,int ) ;
 int svn_bdb_dbc_close (int *) ;
 int svn_bdb_dbc_get (int *,int *,int *,int ) ;
 int svn_fs_base__clear_dbt (int *) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__string_copy(svn_fs_t *fs,
                        const char **new_key,
                        const char *key,
                        trail_t *trail,
                        apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT query;
  DBT result;
  DBT copykey;
  DBC *cursor;
  int db_err;



  const char *old_key = apr_pstrdup(pool, key);

  SVN_ERR(get_key_and_bump(fs, new_key, trail, pool));

  svn_fs_base__trail_debug(trail, "strings", "cursor");
  SVN_ERR(BDB_WRAP(fs, N_("creating cursor for reading a string"),
                   bfd->strings->cursor(bfd->strings, trail->db_txn,
                                        &cursor, 0)));

  svn_fs_base__str_to_dbt(&query, old_key);
  svn_fs_base__str_to_dbt(&copykey, *new_key);

  svn_fs_base__clear_dbt(&result);


  db_err = svn_bdb_dbc_get(cursor, &query, &result, DB_SET);
  if (db_err)
    {
      svn_bdb_dbc_close(cursor);
      return BDB_WRAP(fs, N_("getting next-key value"), db_err);
    }

  while (1)
    {
      svn_fs_base__trail_debug(trail, "strings", "put");
      db_err = bfd->strings->put(bfd->strings, trail->db_txn,
                                 &copykey, &result, 0);
      if (db_err)
        {
          svn_bdb_dbc_close(cursor);
          return BDB_WRAP(fs, N_("writing copied data"), db_err);
        }


      svn_fs_base__clear_dbt(&result);
      db_err = svn_bdb_dbc_get(cursor, &query, &result, DB_NEXT_DUP);
      if (db_err == DB_NOTFOUND)
        break;
      if (db_err)
        {
          svn_bdb_dbc_close(cursor);
          return BDB_WRAP(fs, N_("fetching string data for a copy"), db_err);
        }
    }

  return BDB_WRAP(fs, N_("closing string-reading cursor"),
                  svn_bdb_dbc_close(cursor));
}
