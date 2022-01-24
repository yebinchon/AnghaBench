#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vint64 ;
struct calendar {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
typedef  TYPE_1__ ntpcal_split ;

/* Variables and functions */
 scalar_t__ DAY_UNIX_STARTS ; 
 scalar_t__ FUNC0 (struct calendar*,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct calendar*,int /*<<< orphan*/ ) ; 

int
FUNC3(
	struct calendar	*jd,
	const vint64	*ts
	)
{
	ntpcal_split ds;

	ds = FUNC1(ts);
	ds.hi += FUNC0(jd, ds.lo);
	ds.hi += DAY_UNIX_STARTS;

	return FUNC2(jd, ds.hi);
}