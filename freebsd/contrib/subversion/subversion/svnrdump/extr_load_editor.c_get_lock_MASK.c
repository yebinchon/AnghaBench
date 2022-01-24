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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVNRDUMP_PROP_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_ATOMIC_REVPROPS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  lock_retry_func ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const svn_string_t **lock_string_p,
         svn_ra_session_t *session,
         svn_cancel_func_t cancel_func,
         void *cancel_baton,
         apr_pool_t *pool)
{
  svn_boolean_t be_atomic;

  FUNC0(FUNC6(session, &be_atomic,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                pool));
  if (! be_atomic)
    {
      /* Pre-1.7 servers can't lock without a race condition.  (Issue #3546) */
      svn_error_t *err =
        FUNC3(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                         FUNC1("Target server does not support atomic revision "
                           "property edits; consider upgrading it to 1.7."));
      FUNC4(stderr, err, "svnrdump: ");
      FUNC2(err);
    }

  return FUNC5(lock_string_p, NULL, session,
                                      SVNRDUMP_PROP_LOCK, FALSE,
                                      10 /* retries */, lock_retry_func, NULL,
                                      cancel_func, cancel_baton, pool);
}