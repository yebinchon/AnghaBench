
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_17__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_18__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_19__ {TYPE_10__* strings; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_20__ {int flags; scalar_t__ size; scalar_t__ data; } ;
struct TYPE_16__ {int (* del ) (TYPE_10__*,int ,TYPE_4__*,int ) ;int (* put ) (TYPE_10__*,int ,TYPE_4__*,TYPE_4__*,int ) ;} ;
typedef TYPE_4__ DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_DBT_USERMEM ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 int SVN_ERR_FS_NO_SUCH_STRING ;
 int stub1 (TYPE_10__*,int ,TYPE_4__*,int ) ;
 int stub2 (TYPE_10__*,int ,TYPE_4__*,TYPE_4__*,int ) ;
 int * svn_error_createf (int ,int ,char*,char const*) ;
 int svn_fs_base__clear_dbt (TYPE_4__*) ;
 int svn_fs_base__str_to_dbt (TYPE_4__*,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__string_clear(svn_fs_t *fs,
                         const char *key,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  DBT query, result;

  svn_fs_base__str_to_dbt(&query, key);


  svn_fs_base__trail_debug(trail, "strings", "del");
  db_err = bfd->strings->del(bfd->strings, trail->db_txn, &query, 0);


  if (db_err == DB_NOTFOUND)
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_STRING, 0,
       "No such string '%s'", key);


  SVN_ERR(BDB_WRAP(fs, N_("clearing string"), db_err));


  svn_fs_base__clear_dbt(&result);
  result.data = 0;
  result.size = 0;
  result.flags |= DB_DBT_USERMEM;

  svn_fs_base__trail_debug(trail, "strings", "put");
  return BDB_WRAP(fs, N_("storing empty contents"),
                  bfd->strings->put(bfd->strings, trail->db_txn,
                                    &query, &result, 0));
}
