#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  conflicted_range; int /*<<< orphan*/  target_abspath; } ;
typedef  TYPE_1__ svn_client__conflict_report_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_client__conflict_report_t *
FUNC3(const svn_client__conflict_report_t *report,
                    apr_pool_t *result_pool)
{
  svn_client__conflict_report_t *new = FUNC0(result_pool, report,
                                                   sizeof(*new));

  new->target_abspath = FUNC1(result_pool, report->target_abspath);
  new->conflicted_range = FUNC2(report->conflicted_range,
                                           result_pool);
  return new;
}