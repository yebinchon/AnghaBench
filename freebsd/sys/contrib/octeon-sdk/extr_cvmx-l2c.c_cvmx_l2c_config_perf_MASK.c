#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cnt0sel; int cnt1sel; int cnt2sel; int cnt3sel; } ;
union cvmx_l2c_tadx_prf {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {int cnt0sel; int cnt0ena; int cnt0rdclr; int cnt1sel; int cnt1ena; int cnt1rdclr; int cnt2sel; int cnt2ena; int cnt2rdclr; int cnt3sel; int cnt3ena; int cnt3rdclr; } ;
union cvmx_l2c_pfctl {void* u64; TYPE_1__ s; } ;
typedef  int uint32_t ;
typedef  enum cvmx_l2c_event { ____Placeholder_cvmx_l2c_event } cvmx_l2c_event ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_L2C_PFCTL ; 
 int CVMX_L2C_TADS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN5XXX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 

void FUNC6(uint32_t counter, enum cvmx_l2c_event event,
              uint32_t clear_on_read)
{
    if (FUNC1(OCTEON_CN5XXX) || FUNC1(OCTEON_CN3XXX)) {
        union cvmx_l2c_pfctl pfctl;

        pfctl.u64 = FUNC2(CVMX_L2C_PFCTL);

        switch (counter) {
        case 0:
            pfctl.s.cnt0sel = event;
            pfctl.s.cnt0ena = 1;
            pfctl.s.cnt0rdclr = clear_on_read;
            break;
        case 1:
            pfctl.s.cnt1sel = event;
            pfctl.s.cnt1ena = 1;
            pfctl.s.cnt1rdclr = clear_on_read;
            break;
        case 2:
            pfctl.s.cnt2sel = event;
            pfctl.s.cnt2ena = 1;
            pfctl.s.cnt2rdclr = clear_on_read;
            break;
        case 3:
        default:
            pfctl.s.cnt3sel = event;
            pfctl.s.cnt3ena = 1;
            pfctl.s.cnt3rdclr = clear_on_read;
            break;
        }

        FUNC5(CVMX_L2C_PFCTL, pfctl.u64);
    } else {
        union cvmx_l2c_tadx_prf l2c_tadx_prf;
        int tad;

        FUNC3("L2C performance counter events are different for this chip, mapping 'event' to cvmx_l2c_tad_event_t\n");

        FUNC4(clear_on_read, "L2C counters don't support clear on read for this chip\n");

        l2c_tadx_prf.u64 = FUNC2(FUNC0(0));

        switch (counter) {
        case 0:
            l2c_tadx_prf.s.cnt0sel = event;
            break;
        case 1:
            l2c_tadx_prf.s.cnt1sel = event;
            break;
        case 2:
            l2c_tadx_prf.s.cnt2sel = event;
            break;
        default:
        case 3:
            l2c_tadx_prf.s.cnt3sel = event;
            break;
        }
        for (tad = 0; tad < CVMX_L2C_TADS; tad++)
            FUNC5(FUNC0(tad),
                       l2c_tadx_prf.u64);
    }
}