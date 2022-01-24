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
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVNSYNC_PROP_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_ATOMIC_REVPROPS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  check_cancel ; 
 int /*<<< orphan*/  lock_retry_func ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const svn_string_t **lock_string_p,
         svn_ra_session_t *session,
         svn_boolean_t steal_lock,
         apr_pool_t *pool)
{
  svn_error_t *err;
  svn_boolean_t be_atomic;
  const svn_string_t *stolen_lock;

  FUNC0(FUNC7(session, &be_atomic,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                pool));
  if (! be_atomic)
    {
      /* Pre-1.7 server.  Can't lock without a race condition.
         See issue #3546.
       */
      err = FUNC4(
              SVN_ERR_UNSUPPORTED_FEATURE, NULL,
              FUNC1("Target server does not support atomic revision property "
                "edits; consider upgrading it to 1.7 or using an external "
                "locking program"));
      FUNC5(stderr, err, "svnsync: ");
      FUNC3(err);
    }

  err = FUNC6(lock_string_p, &stolen_lock, session,
                                     SVNSYNC_PROP_LOCK, steal_lock,
                                     10 /* retries */, lock_retry_func, NULL,
                                     check_cancel, NULL, pool);
  if (!err && stolen_lock)
    {
      return FUNC2(pool,
                                FUNC1("Stole lock previously held by '%s'\n"),
                                stolen_lock->data);
    }
  return err;
}