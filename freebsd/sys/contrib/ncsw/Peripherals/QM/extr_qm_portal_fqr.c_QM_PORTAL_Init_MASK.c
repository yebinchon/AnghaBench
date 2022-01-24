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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
struct TYPE_11__ {TYPE_2__* p_LowQmPortal; struct TYPE_11__* p_QmPortalDriverParams; int /*<<< orphan*/  h_Qm; int /*<<< orphan*/  dqrrSize; struct qman_fq_cb* p_NullCB; scalar_t__ f_RejectedFrame; scalar_t__ f_DfltFrame; int /*<<< orphan*/  f_LoopDequeueRingCB; int /*<<< orphan*/  wqId; int /*<<< orphan*/  poolChannelId; scalar_t__ dedicatedChannel; scalar_t__* poolChannels; scalar_t__ dedicatedChannelHasPrecedenceOverPoolChannels; int /*<<< orphan*/  specifiedWq; int /*<<< orphan*/  commandType; int /*<<< orphan*/  userToken; scalar_t__ dequeueUpToThreeFrames; int /*<<< orphan*/  pullMode; scalar_t__ fdFq; scalar_t__ dqrr; scalar_t__ dequeueDcaMode; int /*<<< orphan*/  stashDestQueue; int /*<<< orphan*/  fdFqLiodn; int /*<<< orphan*/  dqrrLiodn; int /*<<< orphan*/  fdLiodnOffset; } ;
typedef  TYPE_4__ t_QmPortal ;
struct qman_fq_cb {int /*<<< orphan*/  fqs; int /*<<< orphan*/  dc_ern; scalar_t__ ern; scalar_t__ dqrr; int /*<<< orphan*/  stashDestQueue; int /*<<< orphan*/  fdFqLiodn; int /*<<< orphan*/  dqrrLiodn; int /*<<< orphan*/  liodn; scalar_t__ portalId; } ;
typedef  struct qman_fq_cb t_QmInterModulePortalInitParams ;
typedef  scalar_t__ t_Handle ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  qmParams ;
typedef  int /*<<< orphan*/  e_DpaaSwPortal ;
struct TYPE_10__ {int /*<<< orphan*/  addr_ci; int /*<<< orphan*/  addr_ce; } ;
struct TYPE_8__ {scalar_t__ irq; scalar_t__ cpu; } ;
struct TYPE_9__ {TYPE_3__ addr; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  LoopDequeueRing ; 
 int /*<<< orphan*/  LoopDequeueRingDcaOptimized ; 
 int /*<<< orphan*/  LoopDequeueRingOptimized ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ NO_IRQ ; 
 char* NO_MSG ; 
 size_t QMAN_PORTAL_FLAG_DCA ; 
 size_t QMAN_PORTAL_FLAG_DSTASH ; 
 int QMAN_PORTAL_FLAG_IRQ ; 
 int QMAN_PORTAL_FLAG_IRQ_FAST ; 
 int QMAN_PORTAL_FLAG_IRQ_SLOW ; 
 size_t QMAN_PORTAL_FLAG_RSTASH ; 
 size_t QM_MAX_NUM_OF_POOL_CHANNELS ; 
 size_t QM_SDQCR_CHANNELS_DEDICATED ; 
 size_t FUNC1 (size_t) ; 
 size_t QM_SDQCR_COUNT_EXACT1 ; 
 size_t QM_SDQCR_COUNT_UPTO3 ; 
 size_t QM_SDQCR_DEDICATED_PRECEDENCE ; 
 size_t QM_SDQCR_SOURCE_SPECIFICWQ ; 
 size_t QM_SDQCR_SPECIFICWQ_DEDICATED ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct qman_fq_cb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct qman_fq_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  null_cb_mr ; 
 scalar_t__ FUNC14 (TYPE_4__*,size_t,size_t,int /*<<< orphan*/ ) ; 

t_Error FUNC15(t_Handle h_QmPortal)
{
    t_QmPortal                          *p_QmPortal = (t_QmPortal *)h_QmPortal;
    uint32_t                            i, flags=0, sdqcrFlags=0;
    t_Error                             err;
    t_QmInterModulePortalInitParams     qmParams;

    FUNC9(p_QmPortal, E_INVALID_HANDLE);
    FUNC9(p_QmPortal->p_QmPortalDriverParams, E_INVALID_HANDLE);

    FUNC13(&qmParams, 0, sizeof(qmParams));
    qmParams.portalId       = (uint8_t)p_QmPortal->p_LowQmPortal->config.cpu;
    qmParams.liodn          = p_QmPortal->p_QmPortalDriverParams->fdLiodnOffset;
    qmParams.dqrrLiodn      = p_QmPortal->p_QmPortalDriverParams->dqrrLiodn;
    qmParams.fdFqLiodn      = p_QmPortal->p_QmPortalDriverParams->fdFqLiodn;
    qmParams.stashDestQueue = p_QmPortal->p_QmPortalDriverParams->stashDestQueue;
    if ((err = FUNC6(p_QmPortal->h_Qm, &qmParams)) != E_OK)
        FUNC8(MAJOR, err, NO_MSG);

    flags = (uint32_t)(((p_QmPortal->p_LowQmPortal->config.irq == NO_IRQ) ?
            0 :
            (QMAN_PORTAL_FLAG_IRQ |
             QMAN_PORTAL_FLAG_IRQ_FAST |
             QMAN_PORTAL_FLAG_IRQ_SLOW)));
    flags |= ((p_QmPortal->p_QmPortalDriverParams->dequeueDcaMode) ? QMAN_PORTAL_FLAG_DCA : 0);
    flags |= (p_QmPortal->p_QmPortalDriverParams->dqrr)?QMAN_PORTAL_FLAG_RSTASH:0;
    flags |= (p_QmPortal->p_QmPortalDriverParams->fdFq)?QMAN_PORTAL_FLAG_DSTASH:0;

    p_QmPortal->pullMode = p_QmPortal->p_QmPortalDriverParams->pullMode;
    if (!p_QmPortal->pullMode)
    {
        sdqcrFlags |= (p_QmPortal->p_QmPortalDriverParams->dequeueUpToThreeFrames) ? QM_SDQCR_COUNT_UPTO3 : QM_SDQCR_COUNT_EXACT1;
        sdqcrFlags |= FUNC4(p_QmPortal->p_QmPortalDriverParams->userToken);
        sdqcrFlags |= FUNC5(p_QmPortal->p_QmPortalDriverParams->commandType);
        if (!p_QmPortal->p_QmPortalDriverParams->specifiedWq)
        {
            /* sdqcrFlags |= QM_SDQCR_SOURCE_CHANNELS;*/ /* removed as the macro is '0' */
            sdqcrFlags |= (p_QmPortal->p_QmPortalDriverParams->dedicatedChannelHasPrecedenceOverPoolChannels) ? QM_SDQCR_DEDICATED_PRECEDENCE : 0;
            sdqcrFlags |= (p_QmPortal->p_QmPortalDriverParams->dedicatedChannel) ? QM_SDQCR_CHANNELS_DEDICATED : 0;
            for (i=0;i<QM_MAX_NUM_OF_POOL_CHANNELS;i++)
                sdqcrFlags |= ((p_QmPortal->p_QmPortalDriverParams->poolChannels[i]) ?
                     FUNC1(i+1) : 0);
        }
        else
        {
            sdqcrFlags |= QM_SDQCR_SOURCE_SPECIFICWQ;
            sdqcrFlags |= (p_QmPortal->p_QmPortalDriverParams->dedicatedChannel) ?
                            QM_SDQCR_SPECIFICWQ_DEDICATED : FUNC2(p_QmPortal->p_QmPortalDriverParams->poolChannelId);
            sdqcrFlags |= FUNC3(p_QmPortal->p_QmPortalDriverParams->wqId);
        }
    }
    if ((flags & QMAN_PORTAL_FLAG_RSTASH) && (flags & QMAN_PORTAL_FLAG_DCA))
        p_QmPortal->f_LoopDequeueRingCB = LoopDequeueRingDcaOptimized;
    else if ((flags & QMAN_PORTAL_FLAG_RSTASH) && !(flags & QMAN_PORTAL_FLAG_DCA))
        p_QmPortal->f_LoopDequeueRingCB = LoopDequeueRingOptimized;
    else
        p_QmPortal->f_LoopDequeueRingCB = LoopDequeueRing;

    if ((!p_QmPortal->f_RejectedFrame) || (!p_QmPortal->f_DfltFrame))
        FUNC8(MAJOR, E_INVALID_VALUE, ("f_RejectedFrame or f_DfltFrame callback not provided"));

    p_QmPortal->p_NullCB = (struct qman_fq_cb *)FUNC11(sizeof(struct qman_fq_cb));
    if (!p_QmPortal->p_NullCB)
        FUNC8(MAJOR, E_NO_MEMORY, ("FQ Null CB obj!!!"));
    FUNC13(p_QmPortal->p_NullCB, 0, sizeof(struct qman_fq_cb));

    p_QmPortal->p_NullCB->dqrr      = p_QmPortal->f_DfltFrame;
    p_QmPortal->p_NullCB->ern       = p_QmPortal->f_RejectedFrame;
    p_QmPortal->p_NullCB->dc_ern    = p_QmPortal->p_NullCB->fqs = null_cb_mr;

    if (FUNC14(p_QmPortal, flags, sdqcrFlags, p_QmPortal->p_QmPortalDriverParams->dqrrSize) != E_OK)
    {
        FUNC8(MAJOR, E_NO_MEMORY, ("create portal failed"));
    }

    FUNC7(p_QmPortal->h_Qm, (t_Handle)p_QmPortal, (e_DpaaSwPortal)p_QmPortal->p_LowQmPortal->config.cpu);
    FUNC10(p_QmPortal->p_QmPortalDriverParams);
    p_QmPortal->p_QmPortalDriverParams = NULL;

    FUNC0(TRACE, ("Qman-Portal %d @ %p:%p",
                p_QmPortal->p_LowQmPortal->config.cpu,
                p_QmPortal->p_LowQmPortal->addr.addr_ce,
                p_QmPortal->p_LowQmPortal->addr.addr_ci
                ));

    FUNC0(TRACE, ("Qman-Portal %d phys @ 0x%016llx:0x%016llx",
                p_QmPortal->p_LowQmPortal->config.cpu,
                (uint64_t)FUNC12(p_QmPortal->p_LowQmPortal->addr.addr_ce),
                (uint64_t)FUNC12(p_QmPortal->p_LowQmPortal->addr.addr_ci)
                ));

    return E_OK;
}