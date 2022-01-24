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
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* children; int /*<<< orphan*/  is_atom; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_sqlite__db_t *sdb,
               const svn_skel_t *skel,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;

  /* Maybe there are no work items to insert.  */
  if (skel == NULL)
    return SVN_NO_ERROR;

  /* Should have a list.  */
  FUNC1(!skel->is_atom);

  /* Is the list a single work item? Or a list of work items?  */
  if (FUNC2(skel))
    return FUNC4(FUNC3(sdb, skel, scratch_pool));

  /* SKEL is a list-of-lists, aka list of work items.  */

  iterpool = FUNC6(scratch_pool);
  for (skel = skel->children; skel; skel = skel->next)
    {
      FUNC5(iterpool);

      FUNC0(FUNC3(sdb, skel, iterpool));
    }
  FUNC7(iterpool);

  return SVN_NO_ERROR;
}