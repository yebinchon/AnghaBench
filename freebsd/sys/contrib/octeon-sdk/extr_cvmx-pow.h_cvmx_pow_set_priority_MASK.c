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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int qos0_pri; int qos1_pri; int qos2_pri; int qos3_pri; int qos4_pri; int qos5_pri; int qos6_pri; int qos7_pri; } ;
struct TYPE_7__ {void* u64; TYPE_1__ s; } ;
typedef  TYPE_3__ cvmx_sso_ppx_qos_pri_t ;
struct TYPE_6__ {int qos0_pri; int qos1_pri; int qos2_pri; int qos3_pri; int qos4_pri; int qos5_pri; int qos6_pri; int qos7_pri; } ;
struct TYPE_8__ {void* u64; TYPE_2__ s; } ;
typedef  TYPE_4__ cvmx_pow_pp_grp_mskx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_FEATURE_CN68XX_WQE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long) ; 
 int FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(uint64_t core_num, const uint8_t priority[])
{
    if (FUNC2(OCTEON_CN3XXX))
        return;

    /* Detect gaps between priorities and flag error */
    {
        int i;
        uint32_t prio_mask = 0;

        for(i=0; i<8; i++)
            if (priority[i] != 0xF)
                prio_mask |= 1<<priority[i];

        if ( prio_mask ^ ((1<<FUNC4(prio_mask)) - 1))
        {
            FUNC3("ERROR: POW static priorities should be contiguous (0x%llx)\n", (unsigned long long)prio_mask);
            return;
        }
    }

    /* POW priorities are supported on CN5xxx and later */
    if (FUNC7(OCTEON_FEATURE_CN68XX_WQE))
    {
        cvmx_sso_ppx_qos_pri_t qos_pri;

        qos_pri.u64 = FUNC5(FUNC1(core_num));
        qos_pri.s.qos0_pri = priority[0]; 
        qos_pri.s.qos1_pri = priority[1]; 
        qos_pri.s.qos2_pri = priority[2]; 
        qos_pri.s.qos3_pri = priority[3]; 
        qos_pri.s.qos4_pri = priority[4]; 
        qos_pri.s.qos5_pri = priority[5]; 
        qos_pri.s.qos6_pri = priority[6]; 
        qos_pri.s.qos7_pri = priority[7]; 
        FUNC6(FUNC1(core_num), qos_pri.u64);
    }
    else
    {
        cvmx_pow_pp_grp_mskx_t grp_msk;

        grp_msk.u64 = FUNC5(FUNC0(core_num));
        grp_msk.s.qos0_pri = priority[0];
        grp_msk.s.qos1_pri = priority[1];
        grp_msk.s.qos2_pri = priority[2];
        grp_msk.s.qos3_pri = priority[3];
        grp_msk.s.qos4_pri = priority[4];
        grp_msk.s.qos5_pri = priority[5];
        grp_msk.s.qos6_pri = priority[6];
        grp_msk.s.qos7_pri = priority[7];

        FUNC6(FUNC0(core_num), grp_msk.u64);
    }
}