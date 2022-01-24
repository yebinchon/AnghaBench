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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  COHER_FABRIC_CONF ; 
 int /*<<< orphan*/  COHER_FABRIC_CTRL ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(void)
{
	uint32_t val, cpus, mask;

	cpus = FUNC0();
	mask = (1 << cpus) - 1;
	val = FUNC1(COHER_FABRIC_CTRL);
	val |= (mask << 24);
	FUNC2(COHER_FABRIC_CTRL, val);

	val = FUNC1(COHER_FABRIC_CONF);
	val |= (mask << 24);
	val |= (1 << 15);
	FUNC2(COHER_FABRIC_CONF, val);
}