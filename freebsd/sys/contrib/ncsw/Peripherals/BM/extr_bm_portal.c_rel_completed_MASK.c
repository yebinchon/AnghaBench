#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int rcrCons; int /*<<< orphan*/  p_BmPortalLow; } ;
typedef  TYPE_1__ t_BmPortal ;

/* Variables and functions */
 int BM_RCR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(t_BmPortal *p_BmPortal, uint32_t rcr_poll)
{
    uint32_t tr_cons = p_BmPortal->rcrCons;
    if (rcr_poll & 0xc0000000) {
        rcr_poll &= 0x7fffffff;
        tr_cons ^= 0x80000000;
    }
    if (tr_cons >= rcr_poll)
        return 1;
    if ((rcr_poll - tr_cons) > BM_RCR_SIZE)
        return 1;
    if (!FUNC0(p_BmPortal->p_BmPortalLow))
        /* If RCR is empty, we must have completed */
        return 1;
    FUNC1(p_BmPortal, 0);
    return 0;
}