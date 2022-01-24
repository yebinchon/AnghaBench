#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct bm_rcr {scalar_t__ ci; int /*<<< orphan*/  cursor; int /*<<< orphan*/  busy; } ;
struct bm_portal {struct bm_rcr rcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_RCR_SIZE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  RCR_CI_CINH ; 
 int /*<<< orphan*/  RCR_PI_CINH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WARNING ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct bm_portal *portal)
{
    register struct bm_rcr *rcr = &portal->rcr;
    uint8_t pi = (uint8_t)(FUNC3(RCR_PI_CINH) & (BM_RCR_SIZE - 1));
    uint8_t ci = (uint8_t)(FUNC3(RCR_CI_CINH) & (BM_RCR_SIZE - 1));
    FUNC0(!rcr->busy);
    if (pi != FUNC1(rcr->cursor))
        FUNC2(WARNING, E_INVALID_STATE, ("losing uncommitted RCR entries"));
    if (ci != rcr->ci)
        FUNC2(WARNING, E_INVALID_STATE, ("missing existing RCR completions"));
    if (rcr->ci != FUNC1(rcr->cursor))
        FUNC2(WARNING, E_INVALID_STATE, ("RCR destroyed unquiesced"));
}