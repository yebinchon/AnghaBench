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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_REG_BASE_BCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_BVR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WVR ; 
 int /*<<< orphan*/  DBG_WB_BCR ; 
 int /*<<< orphan*/  DBG_WB_BVR ; 
 int /*<<< orphan*/  DBG_WB_WCR ; 
 int /*<<< orphan*/  DBG_WB_WVR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(int reg, int n, uint64_t val)
{
	switch (reg + n) {
	FUNC0(DBG_WB_WVR, DBG_REG_BASE_WVR, val);
	FUNC0(DBG_WB_WCR, DBG_REG_BASE_WCR, val);
	FUNC0(DBG_WB_BVR, DBG_REG_BASE_BVR, val);
	FUNC0(DBG_WB_BCR, DBG_REG_BASE_BCR, val);
	default:
		FUNC2("trying to write to wrong debug register %d\n", n);
		return;
	}
	FUNC1();
}