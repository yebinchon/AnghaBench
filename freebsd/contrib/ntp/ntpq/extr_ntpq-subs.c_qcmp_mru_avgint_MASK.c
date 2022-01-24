#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double count; int /*<<< orphan*/  last; int /*<<< orphan*/  first; } ;
typedef  TYPE_1__ mru ;
typedef  int /*<<< orphan*/  l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(
	const void *v1,
	const void *v2
	)
{
	const mru * const *	ppm1 = v1;
	const mru * const *	ppm2 = v2;
	const mru *		pm1;
	const mru *		pm2;
	l_fp			interval;
	double			avg1;
	double			avg2;

	pm1 = *ppm1;
	pm2 = *ppm2;

	interval = pm1->last;
	FUNC3(&interval, &pm1->first);
	FUNC0(&interval, avg1);
	avg1 /= pm1->count;

	interval = pm2->last;
	FUNC3(&interval, &pm2->first);
	FUNC0(&interval, avg2);
	avg2 /= pm2->count;

	if (avg1 < avg2)
		return -1;
	else if (avg1 > avg2)
		return 1;

	/* secondary sort on lstint - rarely tested */
	if (FUNC1(&pm1->last, &pm2->last))
		return 0;
	else if (FUNC2(&pm1->last, &pm2->last))
		return -1;
	else
		return 1;
}