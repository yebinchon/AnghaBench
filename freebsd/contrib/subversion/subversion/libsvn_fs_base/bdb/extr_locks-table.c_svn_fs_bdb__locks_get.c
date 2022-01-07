
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_24__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_32__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_lock_t ;
struct TYPE_34__ {TYPE_5__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef TYPE_3__* (* svn_fs_get_locks_callback_t ) (void*,int *,int *) ;
struct TYPE_35__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_depth_t ;
struct TYPE_36__ {TYPE_24__* lock_tokens; } ;
typedef TYPE_5__ base_fs_data_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_37__ {scalar_t__ size; int data; int flags; } ;
struct TYPE_33__ {int (* cursor ) (TYPE_24__*,int ,int **,int ) ;} ;
typedef TYPE_6__ DBT ;
typedef int DBC ;


 TYPE_3__* BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_DBT_MALLOC ;
 int DB_NEXT ;
 int DB_NOTFOUND ;
 int DB_SET_RANGE ;
 int N_ (char*) ;
 int SVN_ERR (TYPE_3__*) ;
 scalar_t__ SVN_ERR_FS_BAD_LOCK_TOKEN ;
 scalar_t__ SVN_ERR_FS_LOCK_EXPIRED ;
 scalar_t__ SVN_ERR_FS_NO_SUCH_LOCK ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char const*,char*,int ) ;
 char* apr_pstrmemdup (int *,int ,scalar_t__) ;
 TYPE_3__* get_lock (int **,TYPE_2__*,char const*,char const*,TYPE_1__*,int *) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,scalar_t__) ;
 int stub1 (TYPE_24__*,int ,int **,int ) ;
 int svn_bdb_dbc_close (int *) ;
 int svn_bdb_dbc_get (int *,TYPE_6__*,TYPE_6__*,int ) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 TYPE_6__* svn_fs_base__result_dbt (TYPE_6__*) ;
 int svn_fs_base__str_to_dbt (TYPE_6__*,char const*) ;
 int svn_fs_base__track_dbt (TYPE_6__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 TYPE_3__* svn_fs_bdb__lock_token_get (char const**,TYPE_2__*,char const*,TYPE_1__*,int *) ;
 int svn_fspath__is_root (char const*,scalar_t__) ;
 char* svn_fspath__skip_ancestor (char const*,char const*) ;
 int svn_path_component_count (char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_bdb__locks_get(svn_fs_t *fs,
                      const char *path,
                      svn_depth_t depth,
                      svn_fs_get_locks_callback_t get_locks_func,
                      void *get_locks_baton,
                      trail_t *trail,
                      apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBC *cursor;
  DBT key, value;
  int db_err, db_c_err;
  apr_pool_t *subpool = svn_pool_create(pool);
  const char *lock_token;
  svn_lock_t *lock;
  svn_error_t *err;
  const char *lookup_path = path;
  apr_size_t lookup_len;


  err = svn_fs_bdb__lock_token_get(&lock_token, fs, path, trail, pool);
  if (err && ((err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)
              || (err->apr_err == SVN_ERR_FS_BAD_LOCK_TOKEN)
              || (err->apr_err == SVN_ERR_FS_NO_SUCH_LOCK)))
    {
      svn_error_clear(err);
    }
  else if (err)
    {
      return svn_error_trace(err);
    }
  else
    {
      SVN_ERR(get_lock(&lock, fs, path, lock_token, trail, pool));
      if (lock && get_locks_func)
        {
          SVN_ERR(get_locks_func(get_locks_baton, lock, pool));


          return SVN_NO_ERROR;
        }
    }


  if (depth == svn_depth_empty)
    return SVN_NO_ERROR;



  svn_fs_base__trail_debug(trail, "lock-tokens", "cursor");
  db_err = bfd->lock_tokens->cursor(bfd->lock_tokens, trail->db_txn,
                                    &cursor, 0);
  SVN_ERR(BDB_WRAP(fs, N_("creating cursor for reading lock tokens"),
                   db_err));



  svn_fs_base__str_to_dbt(&key, lookup_path);
  key.flags |= DB_DBT_MALLOC;



  db_err = svn_bdb_dbc_get(cursor, &key, svn_fs_base__result_dbt(&value),
                           DB_SET_RANGE);

  if (!svn_fspath__is_root(path, strlen(path)))
    lookup_path = apr_pstrcat(pool, path, "/", SVN_VA_NULL);
  lookup_len = strlen(lookup_path);



  while ((! db_err)
         && lookup_len < key.size
         && strncmp(lookup_path, key.data, lookup_len) == 0)
    {
      const char *child_path;

      svn_pool_clear(subpool);

      svn_fs_base__track_dbt(&key, subpool);
      svn_fs_base__track_dbt(&value, subpool);


      child_path = apr_pstrmemdup(subpool, key.data, key.size);
      lock_token = apr_pstrmemdup(subpool, value.data, value.size);

      if ((depth == svn_depth_files) || (depth == svn_depth_immediates))
        {





          const char *rel_path = svn_fspath__skip_ancestor(path, child_path);
          if (!rel_path || (svn_path_component_count(rel_path) != 1))
            goto loop_it;
        }


      err = get_lock(&lock, fs, child_path, lock_token, trail, subpool);
      if (err)
        {
          svn_bdb_dbc_close(cursor);
          return svn_error_trace(err);
        }


      if (lock && get_locks_func)
        {
          err = get_locks_func(get_locks_baton, lock, subpool);
          if (err)
            {
              svn_bdb_dbc_close(cursor);
              return svn_error_trace(err);
            }
        }

    loop_it:
      svn_fs_base__result_dbt(&key);
      svn_fs_base__result_dbt(&value);
      db_err = svn_bdb_dbc_get(cursor, &key, &value, DB_NEXT);
    }

  svn_pool_destroy(subpool);
  db_c_err = svn_bdb_dbc_close(cursor);

  if (db_err && (db_err != DB_NOTFOUND))
    SVN_ERR(BDB_WRAP(fs, N_("fetching lock tokens"), db_err));
  if (db_c_err)
    SVN_ERR(BDB_WRAP(fs, N_("fetching lock tokens (closing cursor)"),
                     db_c_err));

  return SVN_NO_ERROR;
}
