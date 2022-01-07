
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int transaction_t ;
struct TYPE_13__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_14__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_15__ {TYPE_10__* transactions; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int (* del ) (TYPE_10__*,int ,int *,int ) ;} ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 scalar_t__ is_committed (int *) ;
 int stub1 (TYPE_10__*,int ,int *,int ) ;
 int * svn_fs_base__err_txn_not_mutable (TYPE_2__*,char const*) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int svn_fs_bdb__get_txn (int **,TYPE_2__*,char const*,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_bdb__delete_txn(svn_fs_t *fs,
                       const char *txn_name,
                       trail_t *trail,
                       apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key;
  transaction_t *txn;


  SVN_ERR(svn_fs_bdb__get_txn(&txn, fs, txn_name, trail, pool));
  if (is_committed(txn))
    return svn_fs_base__err_txn_not_mutable(fs, txn_name);


  svn_fs_base__str_to_dbt(&key, txn_name);
  svn_fs_base__trail_debug(trail, "transactions", "del");
  return BDB_WRAP(fs, N_("deleting entry from 'transactions' table"),
                  bfd->transactions->del(bfd->transactions,
                                         trail->db_txn, &key, 0));
}
