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
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(const char *path,
                             const char *fs_path,
                             apr_pool_t *pool)
{
  svn_error_t *err = FUNC4(path, APR_OS_DEFAULT, pool);
  if (err && FUNC0(err->apr_err))
    {
      FUNC2(err);
      return SVN_NO_ERROR;
    }
  FUNC1(err);

  /* We successfully created a new directory.  Dup the permissions
     from FS->path. */
  return FUNC3(fs_path, path, pool);
}