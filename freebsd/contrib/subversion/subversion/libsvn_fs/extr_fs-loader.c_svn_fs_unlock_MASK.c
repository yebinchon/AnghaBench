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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct lock_baton_t {int /*<<< orphan*/ * fs_err; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lock_baton_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 

svn_error_t *
FUNC5(svn_fs_t *fs, const char *path, const char *token,
              svn_boolean_t break_lock, apr_pool_t *pool)
{
  apr_hash_t *targets = FUNC0(pool);
  svn_error_t *err;
  struct lock_baton_t baton = {0};

  if (!token)
    token = "";
  FUNC4(targets, path, token);

  err = FUNC3(fs, targets, break_lock, lock_cb, &baton,
                           pool, pool);

  if (err && baton.fs_err)
    FUNC1(err, baton.fs_err);
  else if (!err)
    err = baton.fs_err;

  return FUNC2(err);
}