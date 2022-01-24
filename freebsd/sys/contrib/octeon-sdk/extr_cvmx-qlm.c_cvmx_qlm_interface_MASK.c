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

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_CN61XX ; 
 int /*<<< orphan*/  OCTEON_CN63XX ; 
 int /*<<< orphan*/  OCTEON_CN66XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(int interface)
{
	if (FUNC0(OCTEON_CN61XX)) {
		return (interface == 0) ? 2 : 0;
	} else if (FUNC0(OCTEON_CN63XX) || FUNC0(OCTEON_CN66XX)) {
		return 2 - interface;
	} else {
		/* Must be cn68XX */
		switch(interface) {
		case 1:
			return 0;
		default:
			return interface;
		}
	}
}