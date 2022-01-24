#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  db3; } ;
typedef  TYPE_1__ svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  sqlite3_backup ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int SQLITE_BUSY ; 
 int SQLITE_DONE ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int SQLITE_LOCKED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_SQLITE_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_sqlite__mode_readonly ; 
 int /*<<< orphan*/  svn_sqlite__mode_rwcreate ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(const char *src_path,
                    const char *dst_path,
                    apr_pool_t *scratch_pool)
{
  svn_sqlite__db_t *src_db;

  FUNC1(FUNC10(&src_db, src_path, svn_sqlite__mode_readonly,
                           NULL, 0, NULL, 0,
                           scratch_pool, scratch_pool));

  {
    svn_sqlite__db_t *dst_db;
    sqlite3_backup *backup;
    int rc1, rc2;

    FUNC1(FUNC10(&dst_db, dst_path, svn_sqlite__mode_rwcreate,
                             NULL, 0, NULL, 0, scratch_pool, scratch_pool));
    backup = FUNC4(dst_db->db3, "main", src_db->db3, "main");
    if (!backup)
      return FUNC7(SVN_ERR_SQLITE_ERROR, NULL,
                               FUNC2("SQLite hotcopy failed for %s"), src_path);
    do
      {
        /* Pages are usually 1024 byte (SQLite docs). On my laptop
           copying gets faster as the number of pages is increased up
           to about 64, beyond that speed levels off.  Lets put the
           number of pages an order of magnitude higher, this is still
           likely to be a fraction of large databases. */
        rc1 = FUNC5(backup, 1024);

        /* Should we sleep on SQLITE_OK?  That would make copying a
           large database take much longer.  When we do sleep how,
           long should we sleep?  Should the sleep get longer if we
           keep getting BUSY/LOCKED?  I have no real reason for
           choosing 25. */
        if (rc1 == SQLITE_BUSY || rc1 == SQLITE_LOCKED)
          FUNC6(25);
      }
    while (rc1 == SQLITE_OK || rc1 == SQLITE_BUSY || rc1 == SQLITE_LOCKED);
    rc2 = FUNC3(backup);
    if (rc1 != SQLITE_DONE)
      FUNC0(rc1, dst_db);
    FUNC0(rc2, dst_db);
    FUNC1(FUNC9(dst_db));
  }

  FUNC1(FUNC9(src_db));

  FUNC1(FUNC8(src_path, dst_path, scratch_pool));

  return SVN_NO_ERROR;
}