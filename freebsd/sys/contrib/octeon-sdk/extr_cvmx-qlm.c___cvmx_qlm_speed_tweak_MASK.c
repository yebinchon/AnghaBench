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
struct TYPE_3__ {int qlm_spd; } ;
struct TYPE_4__ {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ cvmx_mio_qlmx_cfg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_CN66XX_PASS1_X ; 
 int /*<<< orphan*/  OCTEON_CN68XX_PASS1_X ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
    cvmx_mio_qlmx_cfg_t qlm_cfg;
    int num_qlms = 0;
    int qlm;

    if (FUNC1(OCTEON_CN68XX_PASS1_X))
        num_qlms = 5;
    else if (FUNC1(OCTEON_CN66XX_PASS1_X))
        num_qlms = 3;
    else
        return;

    /* Loop through the QLMs */
    for (qlm = 0; qlm < num_qlms; qlm++)
    {
        /* Read the QLM speed */
	qlm_cfg.u64 = FUNC3(FUNC0(qlm));

        /* If the QLM is at 6.25Ghz or 5Ghz then program JTAG */
        if ((qlm_cfg.s.qlm_spd == 5) || (qlm_cfg.s.qlm_spd == 12) ||
            (qlm_cfg.s.qlm_spd == 0) || (qlm_cfg.s.qlm_spd == 6) ||
            (qlm_cfg.s.qlm_spd == 11))
        {
            FUNC2(qlm, -1, "rx_cap_gen2", 0x1);
            FUNC2(qlm, -1, "rx_eq_gen2", 0x8);
        }
    }
}