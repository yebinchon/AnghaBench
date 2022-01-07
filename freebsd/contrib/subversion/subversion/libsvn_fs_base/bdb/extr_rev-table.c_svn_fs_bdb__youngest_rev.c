
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_11__ {int path; TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ db_recno_t ;
struct TYPE_12__ {TYPE_8__* revisions; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int (* cursor ) (TYPE_8__*,int ,int **,int ) ;} ;
typedef int DBT ;
typedef int DBC ;


 int BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_LAST ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int stub1 (TYPE_8__*,int ,int **,int ) ;
 int svn_bdb_dbc_close (int *) ;
 int svn_bdb_dbc_get (int *,int ,int ,int ) ;
 int * svn_error_createf (int ,int ,char*,int ) ;
 int svn_fs__check_fs (TYPE_2__*,int ) ;
 int svn_fs_base__nodata_dbt (int *) ;
 int svn_fs_base__recno_dbt (int *,scalar_t__*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__youngest_rev(svn_revnum_t *youngest_p,
                         svn_fs_t *fs,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  DBC *cursor = 0;
  DBT key, value;
  db_recno_t recno;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));


  svn_fs_base__trail_debug(trail, "revisions", "cursor");
  SVN_ERR(BDB_WRAP(fs, N_("getting youngest revision (creating cursor)"),
                   bfd->revisions->cursor(bfd->revisions, trail->db_txn,
                                          &cursor, 0)));


  db_err = svn_bdb_dbc_get(cursor,
                           svn_fs_base__recno_dbt(&key, &recno),
                           svn_fs_base__nodata_dbt(&value),
                           DB_LAST);

  if (db_err)
    {


      svn_bdb_dbc_close(cursor);

      if (db_err == DB_NOTFOUND)

        return
          svn_error_createf
          (SVN_ERR_FS_CORRUPT, 0,
           "Corrupt DB: revision 0 missing from 'revisions' table, in "
           "filesystem '%s'", fs->path);

      SVN_ERR(BDB_WRAP(fs, N_("getting youngest revision (finding last entry)"),
                       db_err));
    }







  SVN_ERR(BDB_WRAP(fs, N_("getting youngest revision (closing cursor)"),
                   svn_bdb_dbc_close(cursor)));




  *youngest_p = recno - 1;
  return SVN_NO_ERROR;
}
