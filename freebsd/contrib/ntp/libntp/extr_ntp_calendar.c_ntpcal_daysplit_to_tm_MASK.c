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
struct tm {int dummy; } ;
struct TYPE_3__ {scalar_t__ hi; int /*<<< orphan*/  lo; } ;
typedef  TYPE_1__ ntpcal_split ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tm*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tm*,scalar_t__) ; 

int
FUNC2(
	struct tm	   *utm,
	const ntpcal_split *ds ,
	int32_t		    dof
	)
{
	dof += FUNC0(utm, ds->lo);

	return FUNC1(utm, ds->hi + dof);
}