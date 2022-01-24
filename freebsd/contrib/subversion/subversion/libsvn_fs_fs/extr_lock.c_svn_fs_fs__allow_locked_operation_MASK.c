#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_lock_t ;
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ **,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_locks_callback ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(const char *path,
                                  svn_fs_t *fs,
                                  svn_boolean_t recurse,
                                  svn_boolean_t have_write_lock,
                                  apr_pool_t *pool)
{
  path = FUNC3(path, pool);
  if (recurse)
    {
      /* Discover all locks at or below the path. */
      const char *digest_path;
      FUNC0(FUNC1(&digest_path, fs->path, path, pool));
      FUNC0(FUNC5(fs, digest_path, get_locks_callback,
                         fs, have_write_lock, pool));
    }
  else
    {
      /* Discover and verify any lock attached to the path. */
      svn_lock_t *lock;
      FUNC0(FUNC2(fs, &lock, path, have_write_lock, pool));
      if (lock)
        FUNC0(FUNC4(fs, lock, pool));
    }
  return SVN_NO_ERROR;
}