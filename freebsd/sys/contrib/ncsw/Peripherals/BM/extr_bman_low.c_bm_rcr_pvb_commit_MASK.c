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
typedef  int uint8_t ;
struct bm_rcr_entry {int __dont_write_directly__verb; } ;
struct bm_rcr {int busy; scalar_t__ pmode; int vbit; int /*<<< orphan*/  available; struct bm_rcr_entry* cursor; } ;
struct bm_portal {struct bm_rcr rcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bm_rcr*) ; 
 int /*<<< orphan*/  FUNC2 (struct bm_rcr_entry*) ; 
 scalar_t__ e_BmPortalPVB ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct bm_portal *portal, uint8_t myverb)
{
    register struct bm_rcr *rcr = &portal->rcr;
    struct bm_rcr_entry *rcursor;
    FUNC0(rcr->busy);
    FUNC0(rcr->pmode == e_BmPortalPVB);
    FUNC3();
    rcursor = rcr->cursor;
    rcursor->__dont_write_directly__verb = (uint8_t)(myverb | rcr->vbit);
    FUNC2(rcursor);
    FUNC1(rcr);
    rcr->available--;
#ifdef BM_CHECKING
    rcr->busy = 0;
#endif /* BM_CHECKING */
}