
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int db3; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int sqlite3_backup ;
typedef int apr_pool_t ;


 int SQLITE_BUSY ;
 int SQLITE_DONE ;
 int SQLITE_ERR (int,TYPE_1__*) ;
 int SQLITE_LOCKED ;
 int SQLITE_OK ;
 int SVN_ERR (int ) ;
 int SVN_ERR_SQLITE_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int sqlite3_backup_finish (int *) ;
 int * sqlite3_backup_init (int ,char*,int ,char*) ;
 int sqlite3_backup_step (int *,int) ;
 int sqlite3_sleep (int) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_sqlite__close (TYPE_1__*) ;
 int svn_sqlite__mode_readonly ;
 int svn_sqlite__mode_rwcreate ;
 int svn_sqlite__open (TYPE_1__**,char const*,int ,int *,int ,int *,int ,int *,int *) ;

svn_error_t *
svn_sqlite__hotcopy(const char *src_path,
                    const char *dst_path,
                    apr_pool_t *scratch_pool)
{
  svn_sqlite__db_t *src_db;

  SVN_ERR(svn_sqlite__open(&src_db, src_path, svn_sqlite__mode_readonly,
                           ((void*)0), 0, ((void*)0), 0,
                           scratch_pool, scratch_pool));

  {
    svn_sqlite__db_t *dst_db;
    sqlite3_backup *backup;
    int rc1, rc2;

    SVN_ERR(svn_sqlite__open(&dst_db, dst_path, svn_sqlite__mode_rwcreate,
                             ((void*)0), 0, ((void*)0), 0, scratch_pool, scratch_pool));
    backup = sqlite3_backup_init(dst_db->db3, "main", src_db->db3, "main");
    if (!backup)
      return svn_error_createf(SVN_ERR_SQLITE_ERROR, ((void*)0),
                               _("SQLite hotcopy failed for %s"), src_path);
    do
      {





        rc1 = sqlite3_backup_step(backup, 1024);






        if (rc1 == SQLITE_BUSY || rc1 == SQLITE_LOCKED)
          sqlite3_sleep(25);
      }
    while (rc1 == SQLITE_OK || rc1 == SQLITE_BUSY || rc1 == SQLITE_LOCKED);
    rc2 = sqlite3_backup_finish(backup);
    if (rc1 != SQLITE_DONE)
      SQLITE_ERR(rc1, dst_db);
    SQLITE_ERR(rc2, dst_db);
    SVN_ERR(svn_sqlite__close(dst_db));
  }

  SVN_ERR(svn_sqlite__close(src_db));

  SVN_ERR(svn_io_copy_perms(src_path, dst_path, scratch_pool));

  return SVN_NO_ERROR;
}
