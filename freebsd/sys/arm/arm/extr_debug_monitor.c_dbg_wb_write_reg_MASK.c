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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_WB_BCR ; 
 int /*<<< orphan*/  DBG_WB_BVR ; 
 int /*<<< orphan*/  DBG_WB_WCR ; 
 int /*<<< orphan*/  DBG_WB_WVR ; 
 int OP2_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(int reg, int n, uint32_t val)
{

	switch (reg + n) {
	FUNC0(DBG_WB_WVR, val);
	FUNC0(DBG_WB_WCR, val);
	FUNC0(DBG_WB_BVR, val);
	FUNC0(DBG_WB_BCR, val);
	default:
		FUNC1(
		    "trying to write to CP14 reg. using wrong opc2 %d\n",
		    reg >> OP2_SHIFT);
	}
	FUNC2();
}