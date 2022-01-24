#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int shift; int shft_cnt; int shft_reg; int select; } ;
struct TYPE_7__ {TYPE_2__ s; void* u64; } ;
typedef  TYPE_3__ cvmx_ciu_qlm_jtgd_t ;
struct TYPE_5__ {int mux_sel; int bypass; } ;
struct TYPE_8__ {void* u64; TYPE_1__ s; } ;
typedef  TYPE_4__ cvmx_ciu_qlm_jtgc_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CIU_QLM_JTGC ; 
 int /*<<< orphan*/  CVMX_CIU_QLM_JTGD ; 
 int /*<<< orphan*/  OCTEON_CN56XX_PASS1_X ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 int /*<<< orphan*/  OCTEON_CNF7XXX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 

uint32_t FUNC3(int qlm, int bits, uint32_t data)
{
    cvmx_ciu_qlm_jtgc_t jtgc;
    cvmx_ciu_qlm_jtgd_t jtgd;

    jtgc.u64 = FUNC1(CVMX_CIU_QLM_JTGC);
    jtgc.s.mux_sel = qlm;
    if (!FUNC0(OCTEON_CN6XXX) && !FUNC0(OCTEON_CNF7XXX))
        jtgc.s.bypass = 1<<qlm;
    FUNC2(CVMX_CIU_QLM_JTGC, jtgc.u64);
    FUNC1(CVMX_CIU_QLM_JTGC);

    jtgd.u64 = 0;
    jtgd.s.shift = 1;
    jtgd.s.shft_cnt = bits-1;
    jtgd.s.shft_reg = data;
    if (!FUNC0(OCTEON_CN56XX_PASS1_X))
        jtgd.s.select = 1 << qlm;
    FUNC2(CVMX_CIU_QLM_JTGD, jtgd.u64);
    do
    {
        jtgd.u64 = FUNC1(CVMX_CIU_QLM_JTGD);
    } while (jtgd.s.shift);
    return jtgd.s.shft_reg >> (32-bits);
}