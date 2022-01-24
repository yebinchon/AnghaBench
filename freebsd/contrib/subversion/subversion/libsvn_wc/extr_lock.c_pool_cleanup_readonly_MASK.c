#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  db; scalar_t__ closed; } ;
typedef  TYPE_1__ svn_wc_adm_access_t ;
struct TYPE_7__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t
FUNC3(void *data)
{
  svn_wc_adm_access_t *lock = data;
  svn_error_t *err;

  if (lock->closed)
    return APR_SUCCESS;

  /* If the DB is closed, then we have nothing to do. There are no
     "physical" locks to remove, and we don't care whether this baton
     is registered with the DB.  */
  if (FUNC2(lock->db))
    return APR_SUCCESS;

  /* Close this baton. No lock to preserve. Since this is part of the
     pool cleanup, we don't need to close children -- the cleanup process
     will close all children.  */
  err = FUNC0(lock, FALSE /* preserve_lock */, lock->pool);
  if (err)
    {
      apr_status_t result = err->apr_err;
      FUNC1(err);
      return result;
    }

  return APR_SUCCESS;
}