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
struct TYPE_4__ {int /*<<< orphan*/  was_last_range; int /*<<< orphan*/  conflicted_range; int /*<<< orphan*/  target_abspath; } ;
typedef  TYPE_1__ svn_client__conflict_report_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  merge_source_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_client__conflict_report_t *
FUNC3(const char *target_abspath,
                       const merge_source_t *conflicted_range,
                       svn_boolean_t was_last_range,
                       apr_pool_t *result_pool)
{
  svn_client__conflict_report_t *report = FUNC0(result_pool,
                                                     sizeof(*report));

  report->target_abspath = FUNC1(result_pool, target_abspath);
  report->conflicted_range = FUNC2(conflicted_range, result_pool);
  report->was_last_range = was_last_range;
  return report;
}