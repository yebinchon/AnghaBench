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
struct TYPE_2__ {int exp; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;

/* Variables and functions */

int
FUNC0(long double e)
{
	union IEEEl2bits u;

	u.e = e;
	return (u.bits.exp != 32767);
}