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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(uint16_t devid, uint16_t domid, uint64_t addr,
    uint16_t flag)
{

	FUNC3("\t[PAGE_TAB_HW_ERR EVT: devId:0x%x DomId:0x%x"
	    " Addr:0x%lx", devid, domid, addr);
	FUNC1(flag);
	FUNC2(FUNC0(flag));
}