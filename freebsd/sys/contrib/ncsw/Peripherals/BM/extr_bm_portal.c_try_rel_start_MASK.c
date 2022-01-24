#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  p_BmPortalLow; } ;
typedef  TYPE_1__ t_BmPortal ;
struct bm_rcr_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_RCR_RING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ RCR_THRESH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct bm_rcr_entry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static struct bm_rcr_entry *FUNC6(t_BmPortal *p_BmPortal)
{
    struct bm_rcr_entry *r;

    FUNC1(p_BmPortal);
    if (FUNC3((p_BmPortal)->p_BmPortalLow) < RCR_THRESH)
        FUNC0(p_BmPortal, BM_RCR_RING);
    r = FUNC4((p_BmPortal)->p_BmPortalLow);
    if (!r) {
        FUNC5(p_BmPortal, 1);
        FUNC2(p_BmPortal);
    }
    return r;
}