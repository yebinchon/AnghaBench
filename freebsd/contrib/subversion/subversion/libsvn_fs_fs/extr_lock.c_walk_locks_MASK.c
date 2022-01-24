#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_lock_t ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  (* svn_fs_get_locks_callback_t ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char const* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_fs_t *fs,
           const char *digest_path,
           svn_fs_get_locks_callback_t get_locks_func,
           void *get_locks_baton,
           svn_boolean_t have_write_lock,
           apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *children;
  apr_pool_t *subpool;
  svn_lock_t *lock;

  /* First, send up any locks in the current digest file. */
  FUNC0(FUNC7(&children, &lock, fs->path, digest_path, pool));

  if (lock && FUNC6(lock))
    {
      /* Only remove the lock if we have the write lock.
         Read operations shouldn't change the filesystem. */
      if (have_write_lock)
        FUNC0(FUNC11(fs, lock, pool));
    }
  else if (lock)
    {
      FUNC0(get_locks_func(get_locks_baton, lock, pool));
    }

  /* Now, report all the child entries (if any; bail otherwise). */
  if (! FUNC1(children))
    return SVN_NO_ERROR;
  subpool = FUNC9(pool);
  for (hi = FUNC2(pool, children); hi; hi = FUNC3(hi))
    {
      const char *digest = FUNC4(hi);
      FUNC8(subpool);

      FUNC0(FUNC7
              (NULL, &lock, fs->path,
               FUNC5(fs->path, digest, subpool), subpool));

      if (lock && FUNC6(lock))
        {
          /* Only remove the lock if we have the write lock.
             Read operations shouldn't change the filesystem. */
          if (have_write_lock)
            FUNC0(FUNC11(fs, lock, pool));
        }
      else if (lock)
        {
          FUNC0(get_locks_func(get_locks_baton, lock, pool));
        }
    }
  FUNC10(subpool);
  return SVN_NO_ERROR;
}