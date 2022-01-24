#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cvmx_wqe_t ;
struct TYPE_7__ {scalar_t__ inc_prt_flag; } ;
struct TYPE_10__ {TYPE_1__ s; void* u64; } ;
typedef  TYPE_4__ cvmx_pip_prt_tagx_t ;
struct TYPE_8__ {int tag; } ;
struct TYPE_11__ {TYPE_2__ s; void* u64; } ;
typedef  TYPE_5__ cvmx_pip_bsel_tbl_entx_t ;
struct TYPE_9__ {int upper_tag; int tag; } ;
struct TYPE_12__ {TYPE_3__ s; void* u64; } ;
typedef  TYPE_6__ cvmx_pip_bsel_ext_cfgx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  OCTEON_FEATURE_BIT_EXTRACTOR ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(cvmx_wqe_t *work)
{
    int index = FUNC3(work);
    int port = FUNC5(work);
    int bit = port & 0x3;
    int upper_tag = 0;
    cvmx_pip_bsel_tbl_entx_t bsel_tbl;
    cvmx_pip_bsel_ext_cfgx_t bsel_cfg;
    cvmx_pip_prt_tagx_t prt_tag;

    /* The bit select extractor is available in CN61XX and CN68XX pass2.0 onwards. */
    if (!FUNC6(OCTEON_FEATURE_BIT_EXTRACTOR))
        return -1;

    bsel_tbl.u64 = FUNC4(FUNC1(index));
    bsel_cfg.u64 = FUNC4(FUNC0(bit));

    prt_tag.u64 = FUNC4(FUNC2(port));
    if (prt_tag.s.inc_prt_flag == 0) 
        upper_tag = bsel_cfg.s.upper_tag;
    return (bsel_tbl.s.tag | ((bsel_cfg.s.tag << 8) & 0xff00) | ((upper_tag << 16) & 0xffff0000));
}