
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
typedef int svn_lock_t ;
struct TYPE_10__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_7__* locks; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int (* put ) (TYPE_7__*,int ,int *,int *,int ) ;} ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int stub1 (TYPE_7__*,int ,int *,int *,int ) ;
 int svn_fs_base__skel_to_dbt (int *,int *,int *) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int svn_fs_base__unparse_lock_skel (int **,int *,int *) ;

svn_error_t *
svn_fs_bdb__lock_add(svn_fs_t *fs,
                     const char *lock_token,
                     svn_lock_t *lock,
                     trail_t *trail,
                     apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  svn_skel_t *lock_skel;
  DBT key, value;


  SVN_ERR(svn_fs_base__unparse_lock_skel(&lock_skel, lock, pool));

  svn_fs_base__str_to_dbt(&key, lock_token);
  svn_fs_base__skel_to_dbt(&value, lock_skel, pool);
  svn_fs_base__trail_debug(trail, "lock", "add");
  return BDB_WRAP(fs, N_("storing lock record"),
                  bfd->locks->put(bfd->locks, trail->db_txn,
                                  &key, &value, 0));
}
