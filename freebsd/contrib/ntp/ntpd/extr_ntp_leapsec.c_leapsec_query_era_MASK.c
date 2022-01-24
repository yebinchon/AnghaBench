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
typedef  int /*<<< orphan*/  leap_era_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

int/*BOOL*/
FUNC3(
	leap_era_t *   qr   ,
	uint32_t       ntpts,
	const time_t * pivot)
{
	const leap_table_t * pt;
	vint64               ts64;

	pt   = FUNC1(FALSE);
	ts64 = FUNC2(ntpts, pivot);
	FUNC0(qr, pt, &ts64);
	return TRUE;
}