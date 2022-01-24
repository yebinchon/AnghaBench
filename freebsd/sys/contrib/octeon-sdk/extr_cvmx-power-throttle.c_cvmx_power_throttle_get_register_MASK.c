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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int cvmx_power_throttle_initialized ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

uint64_t FUNC3(int ppid)
{
    uint64_t csr_addr;

    if (!cvmx_power_throttle_initialized)
    {
	FUNC1();
	cvmx_power_throttle_initialized = 1;
    }

    csr_addr = FUNC0(ppid);

    if (csr_addr == 0)
        return -1;

    return FUNC2(csr_addr);
}