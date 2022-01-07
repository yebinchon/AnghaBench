
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_23__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_28__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_lock_t ;
struct TYPE_30__ {TYPE_4__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_31__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
struct TYPE_32__ {TYPE_23__* lock_tokens; } ;
typedef TYPE_4__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_33__ {int size; int data; } ;
struct TYPE_29__ {int (* get ) (TYPE_23__*,int ,int ,int ,int ) ;} ;
typedef TYPE_5__ DBT ;


 int BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_BAD_LOCK_TOKEN ;
 scalar_t__ SVN_ERR_FS_LOCK_EXPIRED ;
 TYPE_3__* SVN_FS__ERR_NO_SUCH_LOCK (TYPE_2__*,char const*) ;
 TYPE_3__* SVN_NO_ERROR ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int stub1 (TYPE_23__*,int ,int ,int ,int ) ;
 int svn_error_compose (TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs_base__result_dbt (TYPE_5__*) ;
 int svn_fs_base__str_to_dbt (TYPE_5__*,char const*) ;
 int svn_fs_base__track_dbt (TYPE_5__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 TYPE_3__* svn_fs_bdb__lock_get (int **,TYPE_2__*,char const*,TYPE_1__*,int *) ;
 TYPE_3__* svn_fs_bdb__lock_token_delete (TYPE_2__*,char const*,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_bdb__lock_token_get(const char **lock_token_p,
                           svn_fs_t *fs,
                           const char *path,
                           trail_t *trail,
                           apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  svn_error_t *err;
  svn_lock_t *lock;
  const char *lock_token;
  int db_err;

  svn_fs_base__trail_debug(trail, "lock-tokens", "get");
  db_err = bfd->lock_tokens->get(bfd->lock_tokens, trail->db_txn,
                                 svn_fs_base__str_to_dbt(&key, path),
                                 svn_fs_base__result_dbt(&value),
                                 0);
  svn_fs_base__track_dbt(&value, pool);

  if (db_err == DB_NOTFOUND)
    return SVN_FS__ERR_NO_SUCH_LOCK(fs, path);
  SVN_ERR(BDB_WRAP(fs, N_("reading lock token"), db_err));

  lock_token = apr_pstrmemdup(pool, value.data, value.size);



  err = svn_fs_bdb__lock_get(&lock, fs, lock_token, trail, pool);
  if (err && ((err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)
              || (err->apr_err == SVN_ERR_FS_BAD_LOCK_TOKEN)))
    {

      svn_error_t *delete_err;
      delete_err = svn_fs_bdb__lock_token_delete(fs, path, trail, pool);
      if (delete_err)
        svn_error_compose(err, delete_err);
      return svn_error_trace(err);
    }
  else if (err)
    return svn_error_trace(err);

  *lock_token_p = lock_token;
  return SVN_NO_ERROR;
}
