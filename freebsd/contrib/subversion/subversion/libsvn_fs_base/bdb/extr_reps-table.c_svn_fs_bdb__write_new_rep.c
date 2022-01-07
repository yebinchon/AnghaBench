
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


struct TYPE_18__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_19__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int representation_t ;
struct TYPE_20__ {TYPE_13__* representations; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_21__ {int data; int size; } ;
struct TYPE_17__ {int (* get ) (TYPE_13__*,int ,TYPE_4__*,int ,int ) ;int (* put ) (TYPE_13__*,int ,int ,int ,int ) ;} ;
typedef TYPE_4__ DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int MAX_KEY_SIZE ;
 char* NEXT_KEY_KEY ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int stub1 (TYPE_13__*,int ,TYPE_4__*,int ,int ) ;
 int stub2 (TYPE_13__*,int ,int ,int ,int ) ;
 int svn_fs_base__next_key (int ,int *,char*) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__str_to_dbt (TYPE_4__*,char*) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int * svn_fs_bdb__write_rep (TYPE_2__*,char const*,int const*,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_bdb__write_new_rep(const char **key,
                          svn_fs_t *fs,
                          const representation_t *rep,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT query, result;
  int db_err;
  apr_size_t len;
  char next_key[MAX_KEY_SIZE];





  svn_fs_base__str_to_dbt(&query, NEXT_KEY_KEY);
  svn_fs_base__trail_debug(trail, "representations", "get");
  SVN_ERR(BDB_WRAP(fs, N_("allocating new representation (getting next-key)"),
                   bfd->representations->get
                   (bfd->representations, trail->db_txn, &query,
                    svn_fs_base__result_dbt(&result), 0)));

  svn_fs_base__track_dbt(&result, pool);


  *key = apr_pstrmemdup(pool, result.data, result.size);
  SVN_ERR(svn_fs_bdb__write_rep(fs, *key, rep, trail, pool));


  len = result.size;
  svn_fs_base__next_key(result.data, &len, next_key);
  svn_fs_base__trail_debug(trail, "representations", "put");
  db_err = bfd->representations->put
    (bfd->representations, trail->db_txn,
     svn_fs_base__str_to_dbt(&query, NEXT_KEY_KEY),
     svn_fs_base__str_to_dbt(&result, next_key),
     0);

  return BDB_WRAP(fs, N_("bumping next representation key"), db_err);
}
