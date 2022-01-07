
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int revision_t ;
typedef int recno ;
typedef scalar_t__ db_recno_t ;
struct TYPE_12__ {TYPE_7__* revisions; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int (* put ) (TYPE_7__*,int ,int ,int ,int ) ;} ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_APPEND ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_7__*,int ,int ,int ,int ) ;
 int stub2 (TYPE_7__*,int ,int ,int ,int ) ;
 int svn_fs_base__recno_dbt (int *,scalar_t__*) ;
 int svn_fs_base__set_dbt (int *,scalar_t__*,int) ;
 int svn_fs_base__skel_to_dbt (int *,int *,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int * svn_fs_base__unparse_revision_skel (int **,int const*,int *) ;

svn_error_t *
svn_fs_bdb__put_rev(svn_revnum_t *rev,
                    svn_fs_t *fs,
                    const revision_t *revision,
                    trail_t *trail,
                    apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  db_recno_t recno = 0;
  svn_skel_t *skel;
  DBT key, value;


  SVN_ERR(svn_fs_base__unparse_revision_skel(&skel, revision, pool));

  if (SVN_IS_VALID_REVNUM(*rev))
    {
      DBT query, result;


      recno = (db_recno_t) *rev + 1;
      svn_fs_base__trail_debug(trail, "revisions", "put");
      db_err = bfd->revisions->put
        (bfd->revisions, trail->db_txn,
         svn_fs_base__set_dbt(&query, &recno, sizeof(recno)),
         svn_fs_base__skel_to_dbt(&result, skel, pool), 0);
      return BDB_WRAP(fs, N_("updating filesystem revision"), db_err);
    }

  svn_fs_base__trail_debug(trail, "revisions", "put");
  db_err = bfd->revisions->put(bfd->revisions, trail->db_txn,
                               svn_fs_base__recno_dbt(&key, &recno),
                               svn_fs_base__skel_to_dbt(&value, skel, pool),
                               DB_APPEND);
  SVN_ERR(BDB_WRAP(fs, N_("storing filesystem revision"), db_err));




  *rev = recno - 1;
  return SVN_NO_ERROR;
}
