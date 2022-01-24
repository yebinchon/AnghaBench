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
struct TYPE_4__ {int /*<<< orphan*/ * remaining_source; int /*<<< orphan*/ * conflicted_range; } ;
typedef  TYPE_1__ single_range_conflict_report_t ;
typedef  int /*<<< orphan*/  merge_source_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static single_range_conflict_report_t *
FUNC3(const merge_source_t *conflicted_range,
                                    const merge_source_t *remaining_source,
                                    apr_pool_t *result_pool)
{
  single_range_conflict_report_t *report
    = FUNC0(result_pool, sizeof(*report));

  FUNC1(conflicted_range != NULL);

  report->conflicted_range = FUNC2(conflicted_range, result_pool);
  report->remaining_source
    = remaining_source ? FUNC2(remaining_source, result_pool)
                       : NULL;
  return report;
}