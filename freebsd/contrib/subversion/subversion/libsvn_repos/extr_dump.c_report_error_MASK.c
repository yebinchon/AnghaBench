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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/ * (* svn_repos_verify_callback_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_revnum_t revision,
             svn_error_t *verify_err,
             svn_repos_verify_callback_t verify_callback,
             void *verify_baton,
             apr_pool_t *pool)
{
  if (verify_callback)
    {
      svn_error_t *cb_err;

      /* The caller provided us with a callback, so make him responsible
         for what's going to happen with the error. */
      cb_err = verify_callback(verify_baton, revision, verify_err, pool);
      FUNC1(verify_err);
      FUNC0(cb_err);

      return SVN_NO_ERROR;
    }
  else
    {
      /* No callback -- no second guessing.  Just return the error. */
      return FUNC2(verify_err);
    }
}