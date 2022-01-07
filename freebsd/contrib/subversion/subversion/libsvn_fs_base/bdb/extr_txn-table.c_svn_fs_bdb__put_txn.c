
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int transaction_t ;
struct TYPE_9__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
struct TYPE_10__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_7__* transactions; } ;
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
 int svn_fs_base__unparse_transaction_skel (int **,int const*,int *) ;

svn_error_t *
svn_fs_bdb__put_txn(svn_fs_t *fs,
                    const transaction_t *txn,
                    const char *txn_name,
                    trail_t *trail,
                    apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  svn_skel_t *txn_skel;
  DBT key, value;


  SVN_ERR(svn_fs_base__unparse_transaction_skel(&txn_skel, txn, pool));



  svn_fs_base__str_to_dbt(&key, txn_name);
  svn_fs_base__skel_to_dbt(&value, txn_skel, pool);
  svn_fs_base__trail_debug(trail, "transactions", "put");
  return BDB_WRAP(fs, N_("storing transaction record"),
                  bfd->transactions->put(bfd->transactions, trail->db_txn,
                                         &key, &value, 0));
}
