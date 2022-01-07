
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_16__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_17__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int revision_t ;
typedef int recno ;
typedef scalar_t__ db_recno_t ;
struct TYPE_18__ {TYPE_13__* revisions; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_19__ {int size; int data; } ;
struct TYPE_15__ {int (* get ) (TYPE_13__*,int ,int ,int ,int ) ;} ;
typedef TYPE_4__ DBT ;


 int BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_13__*,int ,int ,int ,int ) ;
 int * svn_fs_base__err_corrupt_fs_revision (TYPE_2__*,scalar_t__) ;
 int * svn_fs_base__err_dangling_rev (TYPE_2__*,scalar_t__) ;
 int svn_fs_base__parse_revision_skel (int **,int *,int *) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__set_dbt (TYPE_4__*,scalar_t__*,int) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int * svn_skel__parse (int ,int ,int *) ;

svn_error_t *
svn_fs_bdb__get_rev(revision_t **revision_p,
                    svn_fs_t *fs,
                    svn_revnum_t rev,
                    trail_t *trail,
                    apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  DBT key, value;
  svn_skel_t *skel;
  revision_t *revision;




  db_recno_t recno = (db_recno_t) rev + 1;

  if (!SVN_IS_VALID_REVNUM(rev))
    return svn_fs_base__err_dangling_rev(fs, rev);

  svn_fs_base__trail_debug(trail, "revisions", "get");
  db_err = bfd->revisions->get(bfd->revisions, trail->db_txn,
                               svn_fs_base__set_dbt(&key, &recno,
                                                    sizeof(recno)),
                               svn_fs_base__result_dbt(&value),
                               0);
  svn_fs_base__track_dbt(&value, pool);


  if (db_err == DB_NOTFOUND)
    return svn_fs_base__err_dangling_rev(fs, rev);


  SVN_ERR(BDB_WRAP(fs, N_("reading filesystem revision"), db_err));


  skel = svn_skel__parse(value.data, value.size, pool);
  if (! skel)
    return svn_fs_base__err_corrupt_fs_revision(fs, rev);


  SVN_ERR(svn_fs_base__parse_revision_skel(&revision, skel, pool));

  *revision_p = revision;
  return SVN_NO_ERROR;
}
