#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct bm_rcr {int busy; scalar_t__ pmode; int vbit; TYPE_1__* cursor; int /*<<< orphan*/  available; } ;
struct bm_portal {struct bm_rcr rcr; } ;
struct TYPE_2__ {int __dont_write_directly__verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bm_rcr*) ; 
 int /*<<< orphan*/  RCR_PI ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ e_BmPortalPCE ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct bm_portal *portal, uint8_t myverb)
{
    register struct bm_rcr *rcr = &portal->rcr;
    FUNC0(rcr->busy);
    FUNC0(rcr->pmode == e_BmPortalPCE);
    rcr->cursor->__dont_write_directly__verb = (uint8_t)(myverb | rcr->vbit);
    FUNC1(rcr);
    rcr->available--;
    FUNC4();
    FUNC3(RCR_PI, FUNC2(rcr->cursor));
#ifdef BM_CHECKING
    rcr->busy = 0;
#endif /* BM_CHECKING */
}