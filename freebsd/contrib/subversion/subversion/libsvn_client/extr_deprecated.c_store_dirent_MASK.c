#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  TYPE_1__ svn_dirent_t ;
struct ls_baton {int /*<<< orphan*/  locks; int /*<<< orphan*/  dirents; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,TYPE_1__ const*) ; 
 scalar_t__ svn_node_file ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton, const char *path, const svn_dirent_t *dirent,
             const svn_lock_t *lock, const char *abs_path, apr_pool_t *pool)
{
  struct ls_baton *lb = baton;

  /* The dirent is allocated in a temporary pool, so duplicate it into the
     correct pool.  Note, however, that the locks are stored in the correct
     pool already. */
  dirent = FUNC1(dirent, lb->pool);

  /* An empty path means we are called for the target of the operation.
     For compatibility, we only store the target if it is a file, and we
     store it under the basename of the URL.  Note that this makes it
     impossible to differentiate between the target being a directory with a
     child with the same basename as the target and the target being a file,
     but that's how it was implemented. */
  if (path[0] == '\0')
    {
      if (dirent->kind == svn_node_file)
        {
          const char *base_name = FUNC3(abs_path, lb->pool);
          FUNC2(lb->dirents, base_name, dirent);
          if (lock)
            FUNC2(lb->locks, base_name, lock);
        }
    }
  else
    {
      path = FUNC0(lb->pool, path);
      FUNC2(lb->dirents, path, dirent);
      if (lock)
        FUNC2(lb->locks, path, lock);
    }

  return SVN_NO_ERROR;
}