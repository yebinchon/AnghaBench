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
struct isis_metric_block {int /*<<< orphan*/  metric_error; int /*<<< orphan*/  metric_expense; int /*<<< orphan*/  metric_delay; int /*<<< orphan*/  metric_default; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
                        const struct isis_metric_block *isis_metric_block)
{
    FUNC3((ndo, ", Default Metric: %d, %s",
           FUNC2(isis_metric_block->metric_default),
           FUNC0(isis_metric_block->metric_default) ? "External" : "Internal"));
    if (!FUNC1(isis_metric_block->metric_delay))
        FUNC3((ndo, "\n\t\t  Delay Metric: %d, %s",
               FUNC2(isis_metric_block->metric_delay),
               FUNC0(isis_metric_block->metric_delay) ? "External" : "Internal"));
    if (!FUNC1(isis_metric_block->metric_expense))
        FUNC3((ndo, "\n\t\t  Expense Metric: %d, %s",
               FUNC2(isis_metric_block->metric_expense),
               FUNC0(isis_metric_block->metric_expense) ? "External" : "Internal"));
    if (!FUNC1(isis_metric_block->metric_error))
        FUNC3((ndo, "\n\t\t  Error Metric: %d, %s",
               FUNC2(isis_metric_block->metric_error),
               FUNC0(isis_metric_block->metric_error) ? "External" : "Internal"));

    return(1); /* everything is ok */
}