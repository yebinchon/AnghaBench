#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_CONFIG_MULTITHREAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SQLITE_MISUSE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SVN_ERR_SQLITE_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_SQLITE_MIN_VERSION ; 
 scalar_t__ SVN_SQLITE_MIN_VERSION_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static svn_error_t *
FUNC10(void *baton, apr_pool_t *pool)
{
  if (FUNC6() < SVN_SQLITE_MIN_VERSION_NUMBER)
    {
      return FUNC9(
                    SVN_ERR_SQLITE_ERROR, NULL,
                    FUNC2("SQLite compiled for %s, but running with %s"),
                    SVN_SQLITE_MIN_VERSION, FUNC5());
    }

#if APR_HAS_THREADS

  /* SQLite 3.5 allows verification of its thread-safety at runtime.
     Older versions are simply expected to have been configured with
     --enable-threadsafe, which compiles with -DSQLITE_THREADSAFE=1
     (or -DTHREADSAFE, for older versions). */
  if (! sqlite3_threadsafe())
    return svn_error_create(SVN_ERR_SQLITE_ERROR, NULL,
                            _("SQLite is required to be compiled and run in "
                              "thread-safe mode"));

  /* If SQLite has been already initialized, sqlite3_config() returns
     SQLITE_MISUSE. */
  {
    int err = sqlite3_config(SQLITE_CONFIG_MULTITHREAD);
    if (err != SQLITE_OK && err != SQLITE_MISUSE)
      return svn_error_createf(SQLITE_ERROR_CODE(err), NULL,
                               _("Could not configure SQLite [S%d]"), err);
  }
  SQLITE_ERR_MSG(sqlite3_initialize(), _("Could not initialize SQLite"));

#endif /* APR_HAS_THRADS */

  return SVN_NO_ERROR;
}