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
struct TYPE_8__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(const char *lock_file,
                             apr_pool_t *pool)
{
  svn_error_t *err
    = FUNC5(lock_file, TRUE, FALSE, pool);
  if (err && FUNC1(err->apr_err))
    {
      /* No lock file?  No big deal; these are just empty files anyway.
         Create it and try again. */
      FUNC2(err);

      /* This file creation is racy.
         We don't care as long as file gets created at all. */
      err = FUNC4(lock_file, pool);
      if (err && FUNC0(err->apr_err))
        {
          FUNC2(err);
          err = NULL;
        }

      /* Finally, lock the file - if it exists */
      if (!err)
        err = FUNC5(lock_file, TRUE, FALSE, pool);
    }

  return FUNC3(err);
}