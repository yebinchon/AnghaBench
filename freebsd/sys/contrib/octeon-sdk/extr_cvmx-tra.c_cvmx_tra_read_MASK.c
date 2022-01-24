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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {void* datahi; void* data; } ;
struct TYPE_5__ {TYPE_1__ u128; } ;
typedef  TYPE_2__ cvmx_tra_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_TRA_READ_DAT ; 
 int /*<<< orphan*/  CVMX_TRA_READ_DAT_HI ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN5XXX ; 
 int /*<<< orphan*/  OCTEON_CN63XX_PASS1_X ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

cvmx_tra_data_t FUNC2(void)
{
    uint64_t address = CVMX_TRA_READ_DAT;
    cvmx_tra_data_t result;

    /* The trace buffer format is wider than 64-bits in OcteonII model,
       read the register again to get the second part of the data. */
    if (FUNC0(OCTEON_CN63XX_PASS1_X))
    {
        /* These reads need to be as close as possible to each other */
        result.u128.data = FUNC1(address);
        result.u128.datahi = FUNC1(address);
    }
    else if (!FUNC0(OCTEON_CN3XXX) && !FUNC0(OCTEON_CN5XXX))
    {
        /* OcteonII pass2 uses different trace buffer data register for reading
           lower and upper 64-bit values */
        result.u128.data = FUNC1(address);
        result.u128.datahi = FUNC1(CVMX_TRA_READ_DAT_HI);
    }
    else
    {
        result.u128.data = FUNC1(address);
        result.u128.datahi = 0;
    }

    return result;
}