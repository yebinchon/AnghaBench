#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_11__ {int /*<<< orphan*/  p_BmPortalLow; } ;
typedef  TYPE_4__ t_BmPortal ;
struct TYPE_10__ {TYPE_2__* bufs; } ;
struct bm_mc_result {int verb; TYPE_3__ acquire; } ;
struct TYPE_8__ {int bpid; } ;
struct bm_mc_command {TYPE_1__ acquire; } ;
struct bm_buffer {int bpid; int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_9__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_MCC_VERB_ACQUIRE_BUFCOUNT ; 
 int BM_MCC_VERB_CMD_ACQUIRE ; 
 int BM_MCR_VERB_ACQUIRE_BUFCOUNT ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct bm_mc_result* FUNC5 (int /*<<< orphan*/ ) ; 
 struct bm_mc_command* FUNC6 (int /*<<< orphan*/ ) ; 

uint8_t FUNC7(t_Handle h_BmPortal,
                        uint8_t  bpid,
                        struct bm_buffer *bufs,
                        uint8_t num)
{
    t_BmPortal          *p_BmPortal = (t_BmPortal *)h_BmPortal;
    struct bm_mc_command *mcc;
    struct bm_mc_result *mcr;
    uint8_t ret = 0;

    FUNC3(p_BmPortal, E_INVALID_HANDLE, 0);
    FUNC1(p_BmPortal);
    mcc = FUNC6(p_BmPortal->p_BmPortalLow);
    mcc->acquire.bpid = bpid;
    FUNC4(p_BmPortal->p_BmPortalLow,
                 (uint8_t)(BM_MCC_VERB_CMD_ACQUIRE |
                           (num & BM_MCC_VERB_ACQUIRE_BUFCOUNT)));
    while (!(mcr = FUNC5(p_BmPortal->p_BmPortalLow))) ;
    ret = num = (uint8_t)(mcr->verb & BM_MCR_VERB_ACQUIRE_BUFCOUNT);
    FUNC0(num <= 8);
    while (num--) {
        bufs[num].bpid = bpid;
        bufs[num].hi = mcr->acquire.bufs[num].hi;
        bufs[num].lo = mcr->acquire.bufs[num].lo;
    }
    FUNC2(p_BmPortal);
    return ret;
}