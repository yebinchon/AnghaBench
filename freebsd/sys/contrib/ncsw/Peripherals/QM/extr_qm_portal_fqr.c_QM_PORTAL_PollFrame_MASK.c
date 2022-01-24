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
struct TYPE_7__ {int options; int /*<<< orphan*/  p_LowQmPortal; int /*<<< orphan*/  frame; int /*<<< orphan*/  fqidOffset; int /*<<< orphan*/ * h_QmFqr; int /*<<< orphan*/  h_App; } ;
typedef  TYPE_1__ t_QmPortalFrameInfo ;
typedef  TYPE_1__ t_QmPortal ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  t_DpaaFD ;
struct qman_fq {int /*<<< orphan*/  fqidOffset; int /*<<< orphan*/ * h_QmFqr; int /*<<< orphan*/  h_App; } ;
struct qm_dqrr_entry {int /*<<< orphan*/  fd; int /*<<< orphan*/  fqid; int /*<<< orphan*/  contextB; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_EMPTY ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int QMAN_PORTAL_FLAG_DCA ; 
 int QMAN_PORTAL_FLAG_RSTASH ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 struct qman_fq* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct qm_dqrr_entry*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct qm_dqrr_entry* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

t_Error FUNC13(t_Handle h_QmPortal, t_QmPortalFrameInfo *p_frameInfo)
{
    t_QmPortal              *p_QmPortal     = (t_QmPortal *)h_QmPortal;
    struct qm_dqrr_entry    *p_Dq;
    struct qman_fq          *p_Fq;
    int                     prefetch;

    FUNC4(p_QmPortal, E_INVALID_HANDLE);
    FUNC4(p_frameInfo, E_NULL_POINTER);

    FUNC2(p_QmPortal);

    prefetch = !(p_QmPortal->options & QMAN_PORTAL_FLAG_RSTASH);
    if (prefetch)
        FUNC9(p_QmPortal->p_LowQmPortal);
    FUNC10(p_QmPortal->p_LowQmPortal);
    p_Dq = FUNC11(p_QmPortal->p_LowQmPortal);
    if (!p_Dq)
    {
        FUNC3(p_QmPortal);
        return FUNC1(E_EMPTY);
    }
    p_Fq = FUNC6(p_Dq->contextB);
    FUNC0(p_Dq->fqid);
    if (p_Fq)
    {
        p_frameInfo->h_App = p_Fq->h_App;
        p_frameInfo->h_QmFqr = p_Fq->h_QmFqr;
        p_frameInfo->fqidOffset = p_Fq->fqidOffset;
        FUNC5((void*)&p_frameInfo->frame, (void*)&p_Dq->fd, sizeof(t_DpaaFD));
    }
    else
    {
        p_frameInfo->h_App = p_QmPortal->h_App;
        p_frameInfo->h_QmFqr = NULL;
        p_frameInfo->fqidOffset = p_Dq->fqid;
        FUNC5((void*)&p_frameInfo->frame, (void*)&p_Dq->fd, sizeof(t_DpaaFD));
    }
    if (p_QmPortal->options & QMAN_PORTAL_FLAG_DCA) {
        FUNC8(p_QmPortal->p_LowQmPortal,
                                   p_Dq,
                                   false);
        FUNC12(p_QmPortal->p_LowQmPortal);
    } else {
        FUNC12(p_QmPortal->p_LowQmPortal);
        FUNC7(p_QmPortal->p_LowQmPortal, 1);
    }

    FUNC3(p_QmPortal);

    return E_OK;
}