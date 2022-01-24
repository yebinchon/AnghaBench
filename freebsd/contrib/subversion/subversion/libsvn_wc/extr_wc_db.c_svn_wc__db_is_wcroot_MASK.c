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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_boolean_t *is_wcroot,
                     svn_wc__db_t *db,
                     const char *local_abspath,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;

  FUNC1(FUNC3(local_abspath));

  FUNC0(FUNC4(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  FUNC2(wcroot);

  if (*local_relpath != '\0')
    {
      *is_wcroot = FALSE; /* Node is a file, or has a parent directory within
                           the same wcroot */
      return SVN_NO_ERROR;
    }

   *is_wcroot = TRUE;

   return SVN_NO_ERROR;
}