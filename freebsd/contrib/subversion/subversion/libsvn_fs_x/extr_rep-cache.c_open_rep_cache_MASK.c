#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
struct TYPE_12__ {int /*<<< orphan*/ * rep_cache_db; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_13__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  path; TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int REP_CACHE_SCHEMA_FORMAT ; 
 int /*<<< orphan*/  STMT_CREATE_SCHEMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  statements ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_sqlite__mode_rwcreate ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(void *baton,
               apr_pool_t *scratch_pool)
{
  svn_fs_t *fs = baton;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_sqlite__db_t *sdb;
  const char *db_path;
  int version;

  /* Open (or create) the sqlite database.  It will be automatically
     closed when fs->pool is destroyed. */
  db_path = FUNC3(fs->path, scratch_pool);
#ifndef WIN32
  {
    /* We want to extend the permissions that apply to the repository
       as a whole when creating a new rep cache and not simply default
       to umask. */
    svn_boolean_t exists;

    FUNC1(FUNC6(&exists, fs, scratch_pool));
    if (!exists)
      {
        const char *current = FUNC7(fs, scratch_pool);
        svn_error_t *err = FUNC9(db_path, scratch_pool);

        if (err && !FUNC0(err->apr_err))
          /* A real error. */
          return FUNC5(err);
        else if (err)
          /* Some other thread/process created the file. */
          FUNC4(err);
        else
          /* We created the file. */
          FUNC1(FUNC8(current, db_path, scratch_pool));
      }
  }
#endif
  FUNC1(FUNC11(&sdb, db_path,
                           svn_sqlite__mode_rwcreate, statements,
                           0, NULL, 0,
                           fs->pool, scratch_pool));

  FUNC2(FUNC12(&version, sdb,
                                                        scratch_pool),
                        sdb);
  if (version < REP_CACHE_SCHEMA_FORMAT)
    {
      /* Must be 0 -- an uninitialized (no schema) database. Create
         the schema. Results in schema version of 1.  */
      FUNC2(FUNC10(sdb,
                                                        STMT_CREATE_SCHEMA),
                            sdb);
    }

  /* This is used as a flag that the database is available so don't
     set it earlier. */
  ffd->rep_cache_db = sdb;

  return SVN_NO_ERROR;
}