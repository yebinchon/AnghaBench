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
struct TYPE_3__ {int offset; int skip; } ;
struct TYPE_4__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_pip_bsel_ext_cfgx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_FEATURE_BIT_EXTRACTOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(int bit, int offset, int skip)
{
    cvmx_pip_bsel_ext_cfgx_t bsel_cfg;

    /* The bit select extractor is available in CN61XX and CN68XX pass2.0 onwards. */
    if (!FUNC3(OCTEON_FEATURE_BIT_EXTRACTOR))
        return;

    bsel_cfg.u64 = FUNC1(FUNC0(bit));
    bsel_cfg.s.offset = offset;
    bsel_cfg.s.skip = skip;
    FUNC2(FUNC0(bit), bsel_cfg.u64);
}