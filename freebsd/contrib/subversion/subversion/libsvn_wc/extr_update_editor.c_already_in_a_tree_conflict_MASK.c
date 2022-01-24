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
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_boolean_t *conflicted,
                           svn_boolean_t *ignored,
                           svn_wc__db_t *db,
                           const char *local_abspath,
                           apr_pool_t *scratch_pool)
{
  const char *ancestor_abspath = local_abspath;
  apr_pool_t *iterpool = FUNC5(scratch_pool);

  FUNC1(FUNC3(local_abspath));

  *conflicted = *ignored = FALSE;

  while (TRUE)
    {
      svn_boolean_t is_wc_root;

      FUNC4(iterpool);

      FUNC0(FUNC7(conflicted, ignored, db,
                                              ancestor_abspath, TRUE,
                                              scratch_pool));
      if (*conflicted || *ignored)
        break;

      FUNC0(FUNC8(&is_wc_root, db, ancestor_abspath,
                                   iterpool));
      if (is_wc_root)
        break;

      ancestor_abspath = FUNC2(ancestor_abspath, scratch_pool);
    }

  FUNC6(iterpool);

  return SVN_NO_ERROR;
}