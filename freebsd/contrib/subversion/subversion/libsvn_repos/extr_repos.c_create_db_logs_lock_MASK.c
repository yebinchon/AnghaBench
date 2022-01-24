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
struct TYPE_4__ {int /*<<< orphan*/  fs_type; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_TYPE_BDB ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* bdb_logs_lock_file_contents ; 
 char* pre12_compat_unneeded_file_contents ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_repos_t *repos, apr_pool_t *pool) {
  const char *contents;
  const char *lockfile_path;

  lockfile_path = FUNC4(repos, pool);
  if (FUNC2(repos->fs_type, SVN_FS_TYPE_BDB) == 0)
    contents = bdb_logs_lock_file_contents;
  else
    contents = pre12_compat_unneeded_file_contents;

  FUNC0(FUNC3(lockfile_path, contents, pool),
            FUNC1("Creating db logs lock file"));

  return SVN_NO_ERROR;
}