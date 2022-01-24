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
typedef  scalar_t__ uint64_t ;
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

uint16_t FUNC3(int pcie_port, int bus, int dev, int fn, int reg)
{
    uint64_t address = FUNC0(pcie_port, bus, dev, fn, reg);
    if (address)
        return FUNC1(FUNC2(address));
    else
        return 0xffff;
}