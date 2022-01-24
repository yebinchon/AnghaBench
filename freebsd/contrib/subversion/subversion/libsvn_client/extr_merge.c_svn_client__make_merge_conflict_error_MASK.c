#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {TYPE_3__* conflicted_range; int /*<<< orphan*/  target_abspath; int /*<<< orphan*/  was_last_range; } ;
typedef  TYPE_4__ svn_client__conflict_report_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {TYPE_2__* loc2; TYPE_1__* loc1; } ;
struct TYPE_7__ {scalar_t__ rev; } ;
struct TYPE_6__ {scalar_t__ rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_WC_FOUND_CONFLICT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC5(svn_client__conflict_report_t *report,
                                      apr_pool_t *scratch_pool)
{
  FUNC1(!report || FUNC2(report->target_abspath));

  if (report && ! report->was_last_range)
    {
      svn_error_t *err = FUNC4(SVN_ERR_WC_FOUND_CONFLICT, NULL,
       FUNC0("One or more conflicts were produced while merging r%ld:%ld into\n"
         "'%s' --\n"
         "resolve all conflicts and rerun the merge to apply the remaining\n"
         "unmerged revisions"),
       report->conflicted_range->loc1->rev, report->conflicted_range->loc2->rev,
       FUNC3(report->target_abspath, scratch_pool));
      FUNC1(report->conflicted_range->loc1->rev != report->conflicted_range->loc2->rev); /* ### is a valid case in a 2-URL merge */
      return err;
    }
  return SVN_NO_ERROR;
}