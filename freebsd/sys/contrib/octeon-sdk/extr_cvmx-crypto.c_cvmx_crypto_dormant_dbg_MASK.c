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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  dat; } ;
struct TYPE_4__ {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ cvmx_rnm_eer_dbg_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_RNM_EER_DBG ; 
 int /*<<< orphan*/  OCTEON_FEATURE_DORM_CRYPTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

uint64_t FUNC2(void)
{
    cvmx_rnm_eer_dbg_t dbg;

    if (!FUNC1(OCTEON_FEATURE_DORM_CRYPTO))
        return 0;

    dbg.u64 = FUNC0(CVMX_RNM_EER_DBG);
    return dbg.s.dat;
}