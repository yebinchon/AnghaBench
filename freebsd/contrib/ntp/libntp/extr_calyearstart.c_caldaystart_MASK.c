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
typedef  scalar_t__ u_int32 ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_3__ {scalar_t__ lo; } ;
typedef  TYPE_1__ ntpcal_split ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*) ; 

u_int32
FUNC2(u_int32 ntptime, const time_t *pivot)
{
	vint64       vlong;
	ntpcal_split split;

	vlong = FUNC1(ntptime, pivot);
	split = FUNC0(&vlong);
	
	return ntptime - split.lo;
}