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
typedef  void* uint64_t ;
struct TYPE_5__ {void* grp_msk; } ;
struct TYPE_7__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_3__ cvmx_sso_ppx_grp_msk_t ;
struct TYPE_6__ {void* grp_msk; } ;
struct TYPE_8__ {int /*<<< orphan*/  u64; TYPE_2__ s; } ;
typedef  TYPE_4__ cvmx_pow_pp_grp_mskx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  OCTEON_FEATURE_CN68XX_WQE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(uint64_t core_num, uint64_t mask)
{

    if (FUNC4(OCTEON_FEATURE_CN68XX_WQE))
    {
        cvmx_sso_ppx_grp_msk_t grp_msk;
        grp_msk.s.grp_msk = mask;
        FUNC3(FUNC1(core_num), grp_msk.u64);
    }
    else
    {
        cvmx_pow_pp_grp_mskx_t grp_msk;
        grp_msk.u64 = FUNC2(FUNC0(core_num));
        grp_msk.s.grp_msk = mask;
        FUNC3(FUNC0(core_num), grp_msk.u64);
    }
}