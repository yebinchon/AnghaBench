#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_11__ {int /*<<< orphan*/  token; } ;
typedef  TYPE_1__ svn_lock_t ;
struct TYPE_12__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_lock_t **lock_p,
         svn_fs_t *fs,
         const char *path,
         svn_boolean_t have_write_lock,
         svn_boolean_t must_exist,
         apr_pool_t *pool)
{
  svn_lock_t *lock = NULL;
  const char *digest_path;
  svn_node_kind_t kind;

  FUNC0(FUNC3(&digest_path, fs->path, path, pool));
  FUNC0(FUNC6(digest_path, &kind, pool));

  *lock_p = NULL;
  if (kind != svn_node_none)
    FUNC0(FUNC5(NULL, &lock, fs->path, digest_path, pool));

  if (! lock)
    return must_exist ? FUNC2(fs, path) : SVN_NO_ERROR;

  /* Don't return an expired lock. */
  if (FUNC4(lock))
    {
      /* Only remove the lock if we have the write lock.
         Read operations shouldn't change the filesystem. */
      if (have_write_lock)
        FUNC0(FUNC7(fs, lock, pool));
      return FUNC1(fs, lock->token);
    }

  *lock_p = lock;
  return SVN_NO_ERROR;
}