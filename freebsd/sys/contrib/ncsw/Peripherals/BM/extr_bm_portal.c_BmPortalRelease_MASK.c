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
typedef  size_t uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  t_BmPortal ;
struct bm_rcr_entry {size_t bpid; TYPE_1__* bufs; } ;
struct bm_buffer {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_2__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BMAN_RELEASE_FLAG_WAIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,size_t) ; 
 struct bm_rcr_entry* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct bm_rcr_entry**,int) ; 

t_Error FUNC6(t_Handle h_BmPortal,
                        uint8_t bpid,
                        struct bm_buffer *bufs,
                        uint8_t num,
                        uint32_t flags)
{
    t_BmPortal          *p_BmPortal = (t_BmPortal *)h_BmPortal;
    struct bm_rcr_entry *r;
    uint8_t i;

    FUNC2(p_BmPortal, E_INVALID_HANDLE);
    /* TODO: I'm ignoring BMAN_PORTAL_FLAG_COMPACT for now. */
    r = FUNC4(p_BmPortal);
    if (!r) {
        if (flags & BMAN_RELEASE_FLAG_WAIT) {
            t_Error ret = FUNC5(p_BmPortal, &r, flags);
            if (ret)
                return ret;
        } else
            return FUNC1(E_BUSY);
        FUNC0(r != NULL);
    }
    r->bpid = bpid;
    for (i = 0; i < num; i++) {
        r->bufs[i].hi = bufs[i].hi;
        r->bufs[i].lo = bufs[i].lo;
    }
    /* Issue the release command and wait for sync if requested. NB: the
     * commit can't fail, only waiting can. Don't propagate any failure if a
     * signal arrives, otherwise the caller can't distinguish whether the
     * release was issued or not. Code for user-space can check
     * signal_pending() after we return. */
    FUNC3(p_BmPortal, flags, num);
    return E_OK;
}