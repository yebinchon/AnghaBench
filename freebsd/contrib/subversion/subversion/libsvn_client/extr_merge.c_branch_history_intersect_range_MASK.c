#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  tip; int /*<<< orphan*/  has_r0_history; int /*<<< orphan*/  history; } ;
typedef  TYPE_1__ branch_history_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(branch_history_t **intersection_p,
                               const branch_history_t *branch_history,
                               svn_revnum_t oldest_rev,
                               svn_revnum_t youngest_rev,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  branch_history_t *result = FUNC4(result_pool, sizeof(*result));

  FUNC1(FUNC2(oldest_rev));
  FUNC1(FUNC2(youngest_rev));
  FUNC1(oldest_rev >= 1);
  /* Allow a just-empty range (oldest = youngest + 1) but not an
   * arbitrary reverse range (such as oldest = youngest + 2). */
  FUNC1(oldest_rev <= youngest_rev + 1);

  if (oldest_rev <= youngest_rev)
    {
      FUNC0(FUNC6(
                &result->history, branch_history->history,
                youngest_rev, oldest_rev - 1, TRUE /* include_range */,
                result_pool, scratch_pool));
      result->history = FUNC7(result->history, result_pool);
    }
  else
    {
      result->history = FUNC3(result_pool);
    }
  result->has_r0_history = FALSE;

  /* ### TODO: Set RESULT->tip to the tip of the intersection. */
  result->tip = FUNC5(branch_history->tip, result_pool);

  *intersection_p = result;
  return SVN_NO_ERROR;
}