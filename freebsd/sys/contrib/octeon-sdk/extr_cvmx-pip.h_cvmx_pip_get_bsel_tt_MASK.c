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
typedef  int /*<<< orphan*/  cvmx_wqe_t ;
struct TYPE_3__ {int tt; } ;
struct TYPE_4__ {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ cvmx_pip_bsel_tbl_entx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_FEATURE_BIT_EXTRACTOR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(cvmx_wqe_t *work)
{
    int index = FUNC1(work);
    cvmx_pip_bsel_tbl_entx_t bsel_tbl;

    /* The bit select extractor is available in CN61XX and CN68XX pass2.0 onwards. */
    if (!FUNC3(OCTEON_FEATURE_BIT_EXTRACTOR))
        return -1;

    bsel_tbl.u64 = FUNC2(FUNC0(index));

    return bsel_tbl.s.tt;
}