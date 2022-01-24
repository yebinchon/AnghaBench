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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(int pcie_port, int bus, int dev, int fn, int reg, uint8_t val)
{
    uint64_t address = FUNC0(pcie_port, bus, dev, fn, reg);
    if (address)
        FUNC1(address, val);
}