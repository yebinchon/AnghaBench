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
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  ddt_stat_t ;
typedef  int /*<<< orphan*/  ddt_histogram_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

void
FUNC4(spa_t *spa, ddt_stat_t *dds_total)
{
	ddt_histogram_t *ddh_total;

	ddh_total = FUNC3(sizeof (ddt_histogram_t), KM_SLEEP);
	FUNC0(spa, ddh_total);
	FUNC1(dds_total, ddh_total);
	FUNC2(ddh_total, sizeof (ddt_histogram_t));
}