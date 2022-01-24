#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/  abspath; int /*<<< orphan*/ * db; scalar_t__ closed; } ;
typedef  TYPE_1__ svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_10__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static apr_status_t
FUNC9(void *p)
{
  svn_wc_adm_access_t *lock = p;
  apr_uint64_t id;
  svn_skel_t *work_item;
  svn_error_t *err;

  if (lock->closed)
    return APR_SUCCESS;

  /* If the DB is closed, then we have a bunch of extra work to do.  */
  if (FUNC5(lock->db))
    {
      apr_pool_t *scratch_pool;
      svn_wc__db_t *db;

      lock->closed = TRUE;

      /* If there is no ADM area, then we definitely have no work items
         or physical locks to worry about. Bail out.  */
      if (!FUNC4(lock->abspath, lock->pool))
        return APR_SUCCESS;

      /* Creating a subpool is safe within a pool cleanup, as long as
         we're absolutely sure to destroy it before we exit this function.

         We avoid using LOCK->POOL to keep the following functions from
         hanging cleanups or subpools from it. (the cleanups *might* get
         run, but the subpools will NOT be destroyed)  */
      scratch_pool = FUNC2(lock->pool);

      err = FUNC6(&db, NULL /* ### config. need! */, FALSE, TRUE,
                            scratch_pool, scratch_pool);
      if (!err)
        {
          err = FUNC8(&id, &work_item, db, lock->abspath, 0,
                                         scratch_pool, scratch_pool);
          if (!err && work_item == NULL)
            {
              /* There is no remaining work, so we're good to remove any
                 potential "physical" lock.  */
              err = FUNC7(db, lock->abspath, scratch_pool);
            }
        }
      FUNC1(err);

      /* Closes the DB, too.  */
      FUNC3(scratch_pool);

      return APR_SUCCESS;
    }

  /* ### should we create an API that just looks, but doesn't return?  */
  err = FUNC8(&id, &work_item, lock->db, lock->abspath, 0,
                                 lock->pool, lock->pool);

  /* Close just this access baton. The pool cleanup will close the rest.  */
  if (!err)
    err = FUNC0(lock,
                       work_item != NULL /* preserve_lock */,
                       lock->pool);

  if (err)
    {
      apr_status_t apr_err = err->apr_err;
      FUNC1(err);
      return apr_err;
    }

  return APR_SUCCESS;
}