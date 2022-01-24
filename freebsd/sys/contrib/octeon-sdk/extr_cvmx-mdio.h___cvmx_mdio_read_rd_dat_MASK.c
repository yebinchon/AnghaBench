#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {scalar_t__ pending; } ;
struct TYPE_5__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_smix_rd_dat_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CLOCK_CORE ; 
 scalar_t__ CVMX_MDIO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static inline cvmx_smix_rd_dat_t FUNC5(int bus_id)
{
    cvmx_smix_rd_dat_t smi_rd;
    uint64_t done = FUNC2() + (uint64_t)CVMX_MDIO_TIMEOUT *
                       FUNC1(CVMX_CLOCK_CORE) / 1000000;
    do
    {
        FUNC4(1000);
        smi_rd.u64 = FUNC3(FUNC0(bus_id));
    } while (smi_rd.s.pending && (FUNC2() < done));
    return smi_rd;
}