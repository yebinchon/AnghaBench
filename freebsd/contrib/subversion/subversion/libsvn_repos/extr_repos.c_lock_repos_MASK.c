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
struct TYPE_11__ {int /*<<< orphan*/  fs_type; } ;
typedef  TYPE_1__ svn_repos_t ;
struct TYPE_12__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_TYPE_BDB ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_repos_t *repos,
           svn_boolean_t exclusive,
           svn_boolean_t nonblocking,
           apr_pool_t *pool)
{
  if (FUNC3(repos->fs_type, SVN_FS_TYPE_BDB) == 0)
    {
      svn_error_t *err;
      const char *lockfile_path = FUNC6(repos, pool);

      err = FUNC5(lockfile_path, exclusive, nonblocking, pool);
      if (err != NULL && FUNC0(err->apr_err))
        return FUNC4(err);
      FUNC1(err, FUNC2("Error opening db lockfile"));
    }
  return SVN_NO_ERROR;
}