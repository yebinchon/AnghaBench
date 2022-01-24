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
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_PTH_INDEX_HRMPOWADJ ; 
 int /*<<< orphan*/  CVMX_PTH_INDEX_MAXPOW ; 
 int /*<<< orphan*/  CVMX_PTH_INDEX_POWLIM ; 
 int /*<<< orphan*/  OCTEON_CN63XX ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static uint64_t FUNC7(int ppid,
    uint8_t percentage)
{
    if (FUNC0(OCTEON_CN6XXX))
    {
        uint64_t t, csr_addr, r;

        FUNC1(percentage < 101);
        csr_addr = FUNC2(ppid);
        r = FUNC5(csr_addr);

        t = FUNC3(r, CVMX_PTH_INDEX_MAXPOW);
	if (!FUNC0(OCTEON_CN63XX))
	{
	    uint64_t s;

	    s = FUNC3(r, CVMX_PTH_INDEX_HRMPOWADJ);
	    FUNC1(t > s);
	    t = t - s;
	}

	t = percentage * t / 100;
        r = FUNC4(CVMX_PTH_INDEX_POWLIM, r, t);

        FUNC6(csr_addr, r);
        return r;
    }
    return 0;
}