
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef size_t uint32_t ;
struct TYPE_11__ {TYPE_2__* p_LowQmPortal; struct TYPE_11__* p_QmPortalDriverParams; int h_Qm; int dqrrSize; struct qman_fq_cb* p_NullCB; scalar_t__ f_RejectedFrame; scalar_t__ f_DfltFrame; int f_LoopDequeueRingCB; int wqId; int poolChannelId; scalar_t__ dedicatedChannel; scalar_t__* poolChannels; scalar_t__ dedicatedChannelHasPrecedenceOverPoolChannels; int specifiedWq; int commandType; int userToken; scalar_t__ dequeueUpToThreeFrames; int pullMode; scalar_t__ fdFq; scalar_t__ dqrr; scalar_t__ dequeueDcaMode; int stashDestQueue; int fdFqLiodn; int dqrrLiodn; int fdLiodnOffset; } ;
typedef TYPE_4__ t_QmPortal ;
struct qman_fq_cb {int fqs; int dc_ern; scalar_t__ ern; scalar_t__ dqrr; int stashDestQueue; int fdFqLiodn; int dqrrLiodn; int liodn; scalar_t__ portalId; } ;
typedef struct qman_fq_cb t_QmInterModulePortalInitParams ;
typedef scalar_t__ t_Handle ;
typedef scalar_t__ t_Error ;
typedef int qmParams ;
typedef int e_DpaaSwPortal ;
struct TYPE_10__ {int addr_ci; int addr_ce; } ;
struct TYPE_8__ {scalar_t__ irq; scalar_t__ cpu; } ;
struct TYPE_9__ {TYPE_3__ addr; TYPE_1__ config; } ;


 int DBG (int ,char*) ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int LoopDequeueRing ;
 int LoopDequeueRingDcaOptimized ;
 int LoopDequeueRingOptimized ;
 int MAJOR ;
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
 size_t QM_SDQCR_CHANNELS_POOL (size_t) ;
 size_t QM_SDQCR_COUNT_EXACT1 ;
 size_t QM_SDQCR_COUNT_UPTO3 ;
 size_t QM_SDQCR_DEDICATED_PRECEDENCE ;
 size_t QM_SDQCR_SOURCE_SPECIFICWQ ;
 size_t QM_SDQCR_SPECIFICWQ_DEDICATED ;
 size_t QM_SDQCR_SPECIFICWQ_POOL (int ) ;
 size_t QM_SDQCR_SPECIFICWQ_WQ (int ) ;
 size_t QM_SDQCR_TOKEN_SET (int ) ;
 size_t QM_SDQCR_TYPE_SET (int ) ;
 scalar_t__ QmGetSetPortalParams (int ,struct qman_fq_cb*) ;
 int QmSetPortalHandle (int ,scalar_t__,int ) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_4__*,int ) ;
 int TRACE ;
 int XX_Free (TYPE_4__*) ;
 scalar_t__ XX_Malloc (int) ;
 scalar_t__ XX_VirtToPhys (int ) ;
 int memset (struct qman_fq_cb*,int ,int) ;
 int null_cb_mr ;
 scalar_t__ qman_create_portal (TYPE_4__*,size_t,size_t,int ) ;

t_Error QM_PORTAL_Init(t_Handle h_QmPortal)
{
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;
    uint32_t i, flags=0, sdqcrFlags=0;
    t_Error err;
    t_QmInterModulePortalInitParams qmParams;

    SANITY_CHECK_RETURN_ERROR(p_QmPortal, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_QmPortal->p_QmPortalDriverParams, E_INVALID_HANDLE);

    memset(&qmParams, 0, sizeof(qmParams));
    qmParams.portalId = (uint8_t)p_QmPortal->p_LowQmPortal->config.cpu;
    qmParams.liodn = p_QmPortal->p_QmPortalDriverParams->fdLiodnOffset;
    qmParams.dqrrLiodn = p_QmPortal->p_QmPortalDriverParams->dqrrLiodn;
    qmParams.fdFqLiodn = p_QmPortal->p_QmPortalDriverParams->fdFqLiodn;
    qmParams.stashDestQueue = p_QmPortal->p_QmPortalDriverParams->stashDestQueue;
    if ((err = QmGetSetPortalParams(p_QmPortal->h_Qm, &qmParams)) != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);

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
        sdqcrFlags |= QM_SDQCR_TOKEN_SET(p_QmPortal->p_QmPortalDriverParams->userToken);
        sdqcrFlags |= QM_SDQCR_TYPE_SET(p_QmPortal->p_QmPortalDriverParams->commandType);
        if (!p_QmPortal->p_QmPortalDriverParams->specifiedWq)
        {

            sdqcrFlags |= (p_QmPortal->p_QmPortalDriverParams->dedicatedChannelHasPrecedenceOverPoolChannels) ? QM_SDQCR_DEDICATED_PRECEDENCE : 0;
            sdqcrFlags |= (p_QmPortal->p_QmPortalDriverParams->dedicatedChannel) ? QM_SDQCR_CHANNELS_DEDICATED : 0;
            for (i=0;i<QM_MAX_NUM_OF_POOL_CHANNELS;i++)
                sdqcrFlags |= ((p_QmPortal->p_QmPortalDriverParams->poolChannels[i]) ?
                     QM_SDQCR_CHANNELS_POOL(i+1) : 0);
        }
        else
        {
            sdqcrFlags |= QM_SDQCR_SOURCE_SPECIFICWQ;
            sdqcrFlags |= (p_QmPortal->p_QmPortalDriverParams->dedicatedChannel) ?
                            QM_SDQCR_SPECIFICWQ_DEDICATED : QM_SDQCR_SPECIFICWQ_POOL(p_QmPortal->p_QmPortalDriverParams->poolChannelId);
            sdqcrFlags |= QM_SDQCR_SPECIFICWQ_WQ(p_QmPortal->p_QmPortalDriverParams->wqId);
        }
    }
    if ((flags & QMAN_PORTAL_FLAG_RSTASH) && (flags & QMAN_PORTAL_FLAG_DCA))
        p_QmPortal->f_LoopDequeueRingCB = LoopDequeueRingDcaOptimized;
    else if ((flags & QMAN_PORTAL_FLAG_RSTASH) && !(flags & QMAN_PORTAL_FLAG_DCA))
        p_QmPortal->f_LoopDequeueRingCB = LoopDequeueRingOptimized;
    else
        p_QmPortal->f_LoopDequeueRingCB = LoopDequeueRing;

    if ((!p_QmPortal->f_RejectedFrame) || (!p_QmPortal->f_DfltFrame))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("f_RejectedFrame or f_DfltFrame callback not provided"));

    p_QmPortal->p_NullCB = (struct qman_fq_cb *)XX_Malloc(sizeof(struct qman_fq_cb));
    if (!p_QmPortal->p_NullCB)
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("FQ Null CB obj!!!"));
    memset(p_QmPortal->p_NullCB, 0, sizeof(struct qman_fq_cb));

    p_QmPortal->p_NullCB->dqrr = p_QmPortal->f_DfltFrame;
    p_QmPortal->p_NullCB->ern = p_QmPortal->f_RejectedFrame;
    p_QmPortal->p_NullCB->dc_ern = p_QmPortal->p_NullCB->fqs = null_cb_mr;

    if (qman_create_portal(p_QmPortal, flags, sdqcrFlags, p_QmPortal->p_QmPortalDriverParams->dqrrSize) != E_OK)
    {
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("create portal failed"));
    }

    QmSetPortalHandle(p_QmPortal->h_Qm, (t_Handle)p_QmPortal, (e_DpaaSwPortal)p_QmPortal->p_LowQmPortal->config.cpu);
    XX_Free(p_QmPortal->p_QmPortalDriverParams);
    p_QmPortal->p_QmPortalDriverParams = ((void*)0);

    DBG(TRACE, ("Qman-Portal %d @ %p:%p",
                p_QmPortal->p_LowQmPortal->config.cpu,
                p_QmPortal->p_LowQmPortal->addr.addr_ce,
                p_QmPortal->p_LowQmPortal->addr.addr_ci
                ));

    DBG(TRACE, ("Qman-Portal %d phys @ 0x%016llx:0x%016llx",
                p_QmPortal->p_LowQmPortal->config.cpu,
                (uint64_t)XX_VirtToPhys(p_QmPortal->p_LowQmPortal->addr.addr_ce),
                (uint64_t)XX_VirtToPhys(p_QmPortal->p_LowQmPortal->addr.addr_ci)
                ));

    return E_OK;
}
