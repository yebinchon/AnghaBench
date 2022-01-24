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
struct bm_rcr {scalar_t__ cmode; int /*<<< orphan*/  available; scalar_t__ ci; } ;
struct bm_portal {struct bm_rcr rcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_RCR_SIZE ; 
 int /*<<< orphan*/  RCR_CI_CINH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ e_BmPortalRcrCCI ; 

uint8_t FUNC3(struct bm_portal *portal)
{
    register struct bm_rcr *rcr = &portal->rcr;
    uint8_t diff, old_ci = rcr->ci;
    FUNC0(rcr->cmode == e_BmPortalRcrCCI);
    rcr->ci = (uint8_t)(FUNC1(RCR_CI_CINH) & (BM_RCR_SIZE - 1));
    diff = FUNC2(BM_RCR_SIZE, old_ci, rcr->ci);
    rcr->available += diff;
    return diff;
}