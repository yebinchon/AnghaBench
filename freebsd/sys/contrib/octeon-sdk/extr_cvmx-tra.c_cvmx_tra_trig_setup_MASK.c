#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int cvmx_tra_sid_t ;
typedef  int /*<<< orphan*/  cvmx_tra_filt_t ;
struct TYPE_4__ {int u64; } ;
typedef  TYPE_1__ cvmx_tra_filt_sid_t ;
struct TYPE_5__ {int u64; } ;
typedef  TYPE_2__ cvmx_tra_filt_did_t ;
struct TYPE_6__ {int u64; } ;
typedef  TYPE_3__ cvmx_tra_filt_cmd_t ;
typedef  int cvmx_tra_did_t ;

/* Variables and functions */
 int CVMX_L2C_TADS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int CVMX_TRA_DESTINATION_MASK ; 
 int CVMX_TRA_FILT_IOBDMA ; 
 int CVMX_TRA_SOURCE_MASK ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 int /*<<< orphan*/  OCTEON_CNF7XXX ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 

void FUNC9(uint64_t trigger, cvmx_tra_filt_t filter,
                         cvmx_tra_sid_t source_filter, cvmx_tra_did_t dest_filter,
                         uint64_t address, uint64_t address_mask)
{
    cvmx_tra_filt_cmd_t tra_filt_cmd;
    cvmx_tra_filt_sid_t tra_filt_sid;
    cvmx_tra_filt_did_t tra_filt_did;
    int tad;

    tra_filt_cmd.u64 = FUNC6(filter);
    tra_filt_sid.u64 = source_filter & CVMX_TRA_SOURCE_MASK;
    tra_filt_did.u64 = dest_filter & CVMX_TRA_DESTINATION_MASK;

    /* Address filtering does not work when IOBDMA filter command is enabled
       because of some caveats.  Disable the IOBDMA filter command. */
    if ((FUNC5(OCTEON_CN6XXX) || FUNC5(OCTEON_CNF7XXX)) 
        && ((tra_filt_cmd.u64 & CVMX_TRA_FILT_IOBDMA) == CVMX_TRA_FILT_IOBDMA)
        && address_mask != 0)
    {
        FUNC7("The address-based filtering does not work with IOBDMAs, disabling the filter command.\n");
        tra_filt_cmd.u64 &= ~(CVMX_TRA_FILT_IOBDMA);
    }

    for (tad = 0; tad < CVMX_L2C_TADS; tad++)
    {
        FUNC8(FUNC2(tad) + trigger * 64,       tra_filt_cmd.u64);
        FUNC8(FUNC4(tad) + trigger * 64,       tra_filt_sid.u64);
        FUNC8(FUNC3(tad) + trigger * 64,       tra_filt_did.u64);
        FUNC8(FUNC0(tad) + trigger * 64,   address);
        FUNC8(FUNC1(tad) + trigger * 64,   address_mask);
    }
}