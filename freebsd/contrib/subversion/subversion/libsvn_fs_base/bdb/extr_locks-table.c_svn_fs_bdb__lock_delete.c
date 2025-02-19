
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_12__ {TYPE_8__* locks; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int (* del ) (TYPE_8__*,int ,int *,int ) ;} ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int stub1 (TYPE_8__*,int ,int *,int ) ;
 int * svn_fs_base__err_bad_lock_token (TYPE_2__*,char const*) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__lock_delete(svn_fs_t *fs,
                        const char *lock_token,
                        trail_t *trail,
                        apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key;
  int db_err;

  svn_fs_base__str_to_dbt(&key, lock_token);
  svn_fs_base__trail_debug(trail, "locks", "del");
  db_err = bfd->locks->del(bfd->locks, trail->db_txn, &key, 0);

  if (db_err == DB_NOTFOUND)
    return svn_fs_base__err_bad_lock_token(fs, lock_token);
  return BDB_WRAP(fs, N_("deleting lock from 'locks' table"), db_err);
}
