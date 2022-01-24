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
typedef  int /*<<< orphan*/  vint64 ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  leap_table_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

int/*BOOL*/
FUNC4(
	int            insert,
	uint32_t       ntpnow,
	const time_t * pivot )
{
	leap_table_t * pt;
	vint64         now64;

	pt = FUNC1(TRUE);
	now64 = FUNC3(ntpnow, pivot);
	return (   FUNC0(pt, &now64, (insert != 0))
		&& FUNC2(pt));
}