#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int cvmx_tra_sid_t ;
typedef  int /*<<< orphan*/  cvmx_tra_filt_t ;
struct TYPE_8__ {int u64; } ;
typedef  TYPE_2__ cvmx_tra_filt_sid_t ;
struct TYPE_9__ {int u64; } ;
typedef  TYPE_3__ cvmx_tra_filt_did_t ;
struct TYPE_10__ {int u64; } ;
typedef  TYPE_4__ cvmx_tra_filt_cmd_t ;
typedef  int cvmx_tra_did_t ;
struct TYPE_7__ {int rdat_md; } ;
struct TYPE_11__ {int u64; TYPE_1__ s; } ;
typedef  TYPE_5__ cvmx_tra_ctl_t ;

/* Variables and functions */
 int CVMX_L2C_TADS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int CVMX_TRA_DESTINATION_MASK ; 
 int CVMX_TRA_FILT_IOBDMA ; 
 int CVMX_TRA_SOURCE_MASK ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 int /*<<< orphan*/  OCTEON_CNF7XXX ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

void FUNC10(cvmx_tra_ctl_t control, cvmx_tra_filt_t filter,
                    cvmx_tra_sid_t source_filter, cvmx_tra_did_t dest_filter,
                    uint64_t address, uint64_t address_mask)
{
    cvmx_tra_filt_cmd_t filt_cmd;
    cvmx_tra_filt_sid_t filt_sid;
    cvmx_tra_filt_did_t filt_did;
    int tad;

    filt_cmd.u64 = FUNC7(filter);
    filt_sid.u64 = source_filter & CVMX_TRA_SOURCE_MASK;
    filt_did.u64 = dest_filter & CVMX_TRA_DESTINATION_MASK;

    /* Address filtering does not work when IOBDMA filter command is enabled
       because of some caveats.  Disable the IOBDMA filter command. */
    if ((FUNC6(OCTEON_CN6XXX) || FUNC6(OCTEON_CNF7XXX)) 
        && ((filt_cmd.u64 & CVMX_TRA_FILT_IOBDMA) == CVMX_TRA_FILT_IOBDMA)
        && address_mask != 0)
    {
        FUNC8("The address-based filtering does not work with IOBDMAs, disabling the filter command.\n");
        filt_cmd.u64 &= ~(CVMX_TRA_FILT_IOBDMA);
    } 

    /* In OcteonII pass2, the mode bit is added to enable reading the trace 
       buffer data from different registers for lower and upper 64-bit value.
       This bit is reserved in other Octeon models. */
    control.s.rdat_md = 1;

    for (tad = 0; tad < CVMX_L2C_TADS; tad++)
    {
        FUNC9(FUNC0(tad),            control.u64);
        FUNC9(FUNC3(tad),       filt_cmd.u64);
        FUNC9(FUNC5(tad),       filt_sid.u64);
        FUNC9(FUNC4(tad),       filt_did.u64);
        FUNC9(FUNC1(tad),   address);
        FUNC9(FUNC2(tad),   address_mask);
    }
}