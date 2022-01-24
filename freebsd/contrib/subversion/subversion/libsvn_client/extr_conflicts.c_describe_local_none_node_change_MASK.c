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
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
typedef  int svn_wc_conflict_reason_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  svn_wc_conflict_reason_added 136 
#define  svn_wc_conflict_reason_deleted 135 
#define  svn_wc_conflict_reason_edited 134 
#define  svn_wc_conflict_reason_missing 133 
#define  svn_wc_conflict_reason_moved_away 132 
#define  svn_wc_conflict_reason_moved_here 131 
#define  svn_wc_conflict_reason_obstructed 130 
#define  svn_wc_conflict_reason_replaced 129 
#define  svn_wc_conflict_reason_unversioned 128 
 int /*<<< orphan*/  svn_wc_operation_merge ; 
 int /*<<< orphan*/  svn_wc_operation_switch ; 
 int /*<<< orphan*/  svn_wc_operation_update ; 

__attribute__((used)) static svn_error_t *
FUNC3(const char **description,
                                svn_client_conflict_t *conflict,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_wc_conflict_reason_t local_change;
  svn_wc_operation_t operation;

  local_change = FUNC1(conflict);
  operation = FUNC2(conflict);

  switch (local_change)
    {
    case svn_wc_conflict_reason_edited:
      *description = FUNC0("An item containing uncommitted changes was "
                       "found in the working copy.");
      break;
    case svn_wc_conflict_reason_obstructed:
      *description = FUNC0("An item which already occupies this path was found in "
                       "the working copy.");
      break;
    case svn_wc_conflict_reason_deleted:
      *description = FUNC0("A deleted item was found in the working copy.");
      break;
    case svn_wc_conflict_reason_missing:
      if (operation == svn_wc_operation_update ||
          operation == svn_wc_operation_switch)
        *description = FUNC0("No such file or directory was found in the "
                         "working copy.");
      else if (operation == svn_wc_operation_merge)
        {
          /* ### display deleted revision */
          *description = FUNC0("No such file or directory was found in the "
                           "merge target working copy.\nThe item may "
                           "have been deleted or moved away in the "
                           "repository's history.");
        }
      break;
    case svn_wc_conflict_reason_unversioned:
      *description = FUNC0("An unversioned item was found in the working "
                       "copy.");
      break;
    case svn_wc_conflict_reason_added:
    case svn_wc_conflict_reason_replaced:
      *description = FUNC0("An item scheduled to be added to the repository "
                       "in the next commit was found in the working "
                       "copy.");
      break;
    case svn_wc_conflict_reason_moved_away:
      *description = FUNC0("The item in the working copy had been moved "
                       "away at the time this conflict was recorded.");
      break;
    case svn_wc_conflict_reason_moved_here:
      *description = FUNC0("An item had been moved here in the working copy "
                       "at the time this conflict was recorded.");
      break;
    }

  return SVN_NO_ERROR;
}