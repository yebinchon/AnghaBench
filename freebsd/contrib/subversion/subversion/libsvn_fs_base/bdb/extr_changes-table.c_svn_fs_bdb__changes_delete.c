
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
struct TYPE_10__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_7__* changes; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int (* del ) (TYPE_7__*,int ,int ,int ) ;} ;
typedef int DBT ;


 int BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_7__*,int ,int ,int ) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__changes_delete(svn_fs_t *fs,
                           const char *key,
                           trail_t *trail,
                           apr_pool_t *pool)
{
  int db_err;
  DBT query;
  base_fs_data_t *bfd = fs->fsap_data;

  svn_fs_base__trail_debug(trail, "changes", "del");
  db_err = bfd->changes->del(bfd->changes, trail->db_txn,
                             svn_fs_base__str_to_dbt(&query, key), 0);



  if ((db_err) && (db_err != DB_NOTFOUND))
    {
      SVN_ERR(BDB_WRAP(fs, N_("deleting changes"), db_err));
    }

  return SVN_NO_ERROR;
}
