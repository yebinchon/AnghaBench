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
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {scalar_t__ requested_depth; int /*<<< orphan*/  get_locks_baton; int /*<<< orphan*/  (* get_locks_func ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ get_locks_filter_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 scalar_t__ svn_depth_infinity ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton,
                      svn_lock_t *lock,
                      apr_pool_t *pool)
{
  get_locks_filter_baton_t *b = baton;

  /* Filter out unwanted paths.  Since Subversion only allows
     locks on files, we can treat depth=immediates the same as
     depth=files for filtering purposes.  Meaning, we'll keep
     this lock if:

     a) its path is the very path we queried, or
     b) we've asked for a fully recursive answer, or
     c) we've asked for depth=files or depth=immediates, and this
        lock is on an immediate child of our query path.
  */
  if ((FUNC1(b->path, lock->path) == 0)
      || (b->requested_depth == svn_depth_infinity))
    {
      FUNC0(b->get_locks_func(b->get_locks_baton, lock, pool));
    }
  else if ((b->requested_depth == svn_depth_files) ||
           (b->requested_depth == svn_depth_immediates))
    {
      const char *rel_uri = FUNC4(b->path, lock->path);
      if (rel_uri && (FUNC5(rel_uri) == 1))
        FUNC0(b->get_locks_func(b->get_locks_baton, lock, pool));
    }

  return SVN_NO_ERROR;
}