#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/  abspath; int /*<<< orphan*/  path; scalar_t__ db_provided; int /*<<< orphan*/ * db; int /*<<< orphan*/ * entries_all; int /*<<< orphan*/  closed; } ;
typedef  TYPE_1__ svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  pool_cleanup_child ; 
 int /*<<< orphan*/  pool_cleanup_locked ; 
 int /*<<< orphan*/  pool_cleanup_readonly ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_wc_adm_access_t **adm_access,
                 const char *path,
                 svn_wc__db_t *db,
                 svn_boolean_t db_provided,
                 svn_boolean_t write_lock,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_wc_adm_access_t *lock = FUNC2(result_pool, sizeof(*lock));

  lock->closed = FALSE;
  lock->entries_all = NULL;
  lock->db = db;
  lock->db_provided = db_provided;
  lock->path = FUNC4(result_pool, path);
  lock->pool = result_pool;

  FUNC0(FUNC5(&lock->abspath, path, result_pool));

  *adm_access = lock;

  if (write_lock)
    {
      svn_boolean_t owns_lock;

      /* If the db already owns a lock, we can't add an extra lock record */
      FUNC0(FUNC9(&owns_lock, db, path, FALSE,
                                          scratch_pool));

      /* If DB owns the lock, but when there is no access baton open for this
         directory, old access baton based code is trying to access data that
         was previously locked by new code. Just hand them the lock, or
         important code paths like svn_wc_add3() will start failing */
      if (!owns_lock
          || FUNC7(db, lock->abspath, scratch_pool))
        {
          FUNC0(FUNC8(db, lock->abspath, 0, FALSE,
                                           scratch_pool));
        }
    }

  err = FUNC1(lock, scratch_pool);

  if (err)
    return FUNC6(
                err,
                FUNC10(db, lock->abspath, scratch_pool));

  /* ### does this utf8 thing really/still apply??  */
  /* It's important that the cleanup handler is registered *after* at least
     one UTF8 conversion has been done, since such a conversion may create
     the apr_xlate_t object in the pool, and that object must be around
     when the cleanup handler runs.  If the apr_xlate_t cleanup handler
     were to run *before* the access baton cleanup handler, then the access
     baton's handler won't work. */

  /* Register an appropriate cleanup handler, based on the whether this
     access baton is locked or not.  */
  FUNC3(lock->pool, lock,
                            write_lock
                              ? pool_cleanup_locked
                              : pool_cleanup_readonly,
                            pool_cleanup_child);

  return SVN_NO_ERROR;
}