
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_16__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_17__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_18__ {TYPE_11__* copies; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_19__ {int data; int size; } ;
struct TYPE_15__ {int (* get ) (TYPE_11__*,int ,TYPE_4__*,int ,int ) ;int (* put ) (TYPE_11__*,int ,int ,int ,int ) ;} ;
typedef TYPE_4__ DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int MAX_KEY_SIZE ;
 char* NEXT_KEY_KEY ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int stub1 (TYPE_11__*,int ,TYPE_4__*,int ,int ) ;
 int stub2 (TYPE_11__*,int ,int ,int ,int ) ;
 int svn_fs_base__next_key (int ,int *,char*) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__str_to_dbt (TYPE_4__*,char*) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__reserve_copy_id(const char **id_p,
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



  svn_fs_base__trail_debug(trail, "copies", "get");
  SVN_ERR(BDB_WRAP(fs, N_("allocating new copy ID (getting 'next-key')"),
                   bfd->copies->get(bfd->copies, trail->db_txn, &query,
                                    svn_fs_base__result_dbt(&result),
                                    0)));
  svn_fs_base__track_dbt(&result, pool);


  *id_p = apr_pstrmemdup(pool, result.data, result.size);


  len = result.size;
  svn_fs_base__next_key(result.data, &len, next_key);
  svn_fs_base__trail_debug(trail, "copies", "put");
  db_err = bfd->copies->put(bfd->copies, trail->db_txn,
                            svn_fs_base__str_to_dbt(&query, NEXT_KEY_KEY),
                            svn_fs_base__str_to_dbt(&result, next_key),
                            0);

  return BDB_WRAP(fs, N_("bumping next copy key"), db_err);
}
