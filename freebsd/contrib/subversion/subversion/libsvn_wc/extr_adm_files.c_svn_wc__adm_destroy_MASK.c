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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_wc__db_t *db,
                    const char *dir_abspath,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    apr_pool_t *scratch_pool)
{
  svn_boolean_t is_wcroot;

  FUNC1(FUNC2(dir_abspath));

  FUNC0(FUNC7(db, dir_abspath, scratch_pool));

  FUNC0(FUNC6(&is_wcroot, db, dir_abspath, scratch_pool));

  /* Well, the coast is clear for blowing away the administrative
     directory, which also removes remaining locks */

  /* Now close the DB, and we can delete the working copy */
  if (is_wcroot)
    {
      FUNC0(FUNC5(db, dir_abspath, scratch_pool));
      FUNC0(FUNC3(FUNC4(dir_abspath, NULL,
                                                   scratch_pool),
                                 FALSE,
                                 cancel_func, cancel_baton,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}