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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int options; int /*<<< orphan*/  p_LowQmPortal; int /*<<< orphan*/  pullMode; } ;
typedef  TYPE_1__ t_QmPortal ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  TYPE_1__ t_DpaaFD ;
struct qman_fq {int dummy; } ;
struct qm_dqrr_entry {int stat; int /*<<< orphan*/  fd; TYPE_1__* fqid; int /*<<< orphan*/  contextB; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_EMPTY ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int QMAN_PORTAL_FLAG_DCA ; 
 int QMAN_PORTAL_FLAG_RSTASH ; 
 int QM_DQRR_STAT_FD_VALID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct qman_fq* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct qm_dqrr_entry*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct qm_dqrr_entry* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC15(t_Handle h_QmPortal, uint32_t pdqcr, t_DpaaFD *p_Frame)
{
    t_QmPortal              *p_QmPortal = (t_QmPortal *)h_QmPortal;
    struct qm_dqrr_entry    *p_Dq;
    struct qman_fq          *p_Fq;
    int                     prefetch;
    uint32_t                *p_Dst, *p_Src;

    FUNC0(p_QmPortal);
    FUNC0(p_Frame);
    FUNC4(p_QmPortal->pullMode, E_INVALID_STATE);

    FUNC2(p_QmPortal);

    FUNC14(p_QmPortal->p_LowQmPortal, pdqcr);
    FUNC5();
    while (FUNC13(p_QmPortal->p_LowQmPortal)) ;

    prefetch = !(p_QmPortal->options & QMAN_PORTAL_FLAG_RSTASH);
    while(TRUE)
    {
        if (prefetch)
            FUNC9(p_QmPortal->p_LowQmPortal);
        FUNC10(p_QmPortal->p_LowQmPortal);
        p_Dq = FUNC11(p_QmPortal->p_LowQmPortal);
        if (!p_Dq)
            continue;
        p_Fq = FUNC6(p_Dq->contextB);
        FUNC0(p_Dq->fqid);
        p_Dst = (uint32_t *)p_Frame;
        p_Src = (uint32_t *)&p_Dq->fd;
        p_Dst[0] = p_Src[0];
        p_Dst[1] = p_Src[1];
        p_Dst[2] = p_Src[2];
        p_Dst[3] = p_Src[3];
        if (p_QmPortal->options & QMAN_PORTAL_FLAG_DCA)
        {
            FUNC8(p_QmPortal->p_LowQmPortal,
                                       p_Dq,
                                       false);
            FUNC12(p_QmPortal->p_LowQmPortal);
        }
        else
        {
            FUNC12(p_QmPortal->p_LowQmPortal);
            FUNC7(p_QmPortal->p_LowQmPortal, 1);
        }
        break;
    }

    FUNC3(p_QmPortal);

    if (!(p_Dq->stat & QM_DQRR_STAT_FD_VALID))
        return FUNC1(E_EMPTY);

    return E_OK;
}