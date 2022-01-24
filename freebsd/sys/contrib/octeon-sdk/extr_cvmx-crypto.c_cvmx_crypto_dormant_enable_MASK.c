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
struct TYPE_3__ {int /*<<< orphan*/  key; } ;
struct TYPE_4__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_rnm_eer_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_RNM_EER_KEY ; 
 int /*<<< orphan*/  OCTEON_FEATURE_CRYPTO ; 
 int /*<<< orphan*/  OCTEON_FEATURE_DORM_CRYPTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(uint64_t key)
{
    if (FUNC1(OCTEON_FEATURE_CRYPTO))
        return 1;

    if (FUNC1(OCTEON_FEATURE_DORM_CRYPTO)) {
        cvmx_rnm_eer_key_t v;
        v.s.key = key;
        FUNC0(CVMX_RNM_EER_KEY, v.u64);
    }

    return FUNC1(OCTEON_FEATURE_CRYPTO);
}