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
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_wc__db_t *db,
                                          const char *local_abspath,
                                          const char *new_repos_relpath,
                                          svn_revnum_t new_rev,
                                          apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;

  FUNC1(FUNC7(local_abspath));
  FUNC1(FUNC2(new_rev));
  FUNC1(FUNC8(new_repos_relpath));

  FUNC0(FUNC9(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  FUNC4(wcroot);

  FUNC3(
    FUNC6(wcroot, local_relpath,
                               new_repos_relpath, new_rev, scratch_pool),
    wcroot);

  FUNC0(FUNC5(wcroot, local_abspath, svn_depth_empty, scratch_pool));

  return SVN_NO_ERROR;
}