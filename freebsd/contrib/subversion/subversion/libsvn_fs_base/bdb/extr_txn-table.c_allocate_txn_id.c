
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_18__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_19__ {TYPE_9__* transactions; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_21__ {int (* get ) (TYPE_9__*,int ,TYPE_4__*,int ,int ) ;int (* put ) (TYPE_9__*,int ,TYPE_4__*,TYPE_4__*,int ) ;} ;
struct TYPE_20__ {int data; int size; } ;
typedef TYPE_4__ DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int MAX_KEY_SIZE ;
 char* NEXT_KEY_KEY ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int stub1 (TYPE_9__*,int ,TYPE_4__*,int ,int ) ;
 int stub2 (TYPE_9__*,int ,TYPE_4__*,TYPE_4__*,int ) ;
 int svn_fs_base__next_key (int ,int *,char*) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__str_to_dbt (TYPE_4__*,char*) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

__attribute__((used)) static svn_error_t *
allocate_txn_id(const char **id_p,
                svn_fs_t *fs,
                trail_t *trail,
                apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT query, result;
  apr_size_t len;
  char next_key[MAX_KEY_SIZE];
  int db_err;

  svn_fs_base__str_to_dbt(&query, NEXT_KEY_KEY);


  svn_fs_base__trail_debug(trail, "transactions", "get");
  SVN_ERR(BDB_WRAP(fs, N_("allocating new transaction ID (getting 'next-key')"),
                   bfd->transactions->get(bfd->transactions, trail->db_txn,
                                          &query,
                                          svn_fs_base__result_dbt(&result),
                                          0)));
  svn_fs_base__track_dbt(&result, pool);


  *id_p = apr_pstrmemdup(pool, result.data, result.size);


  len = result.size;
  svn_fs_base__next_key(result.data, &len, next_key);
  svn_fs_base__str_to_dbt(&query, NEXT_KEY_KEY);
  svn_fs_base__str_to_dbt(&result, next_key);
  svn_fs_base__trail_debug(trail, "transactions", "put");
  db_err = bfd->transactions->put(bfd->transactions, trail->db_txn,
                                  &query, &result, 0);

  return BDB_WRAP(fs, N_("bumping next transaction key"), db_err);
}
