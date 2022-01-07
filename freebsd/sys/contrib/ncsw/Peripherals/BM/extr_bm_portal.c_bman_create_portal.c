
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int t_Error ;
struct TYPE_7__ {int flags; int p_BmPortalLow; int irq; int depletionPoolsTable; scalar_t__ rcrCons; scalar_t__ rcrProd; scalar_t__ slowpoll; struct bman_depletion* pools; TYPE_1__* cbs; } ;
typedef TYPE_2__ t_BmPortal ;
struct bman_depletion {int dummy; } ;
typedef int e_BmPortalRcrConsumeMode ;
typedef int e_BmPortalProduceMode ;
struct TYPE_6__ {int * f_BmPrefetchCb; int f_BmUpdateCb; int f_BmCommitCb; } ;


 int BMAN_PORTAL_FLAG_CACHE ;
 int BMAN_PORTAL_FLAG_IRQ ;
 int BMAN_PORTAL_FLAG_RECOVER ;
 int BMAN_PORTAL_FLAG_WAIT ;
 scalar_t__ BM_MAX_NUM_OF_POOLS ;
 int BM_PIRQ_BSCN ;
 int BM_PIRQ_RCRI ;
 size_t BM_RCR_RING ;
 int ERROR_CODE (int ) ;
 int E_INVALID_STATE ;
 int E_OK ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int XX_EnableIntr (int ) ;
 int XX_Free (TYPE_2__*) ;
 int XX_SetIntr (int ,int ,TYPE_2__*) ;
 int bm_isr_bscn_mask (int ,scalar_t__,int ) ;
 int bm_isr_disable_write (int ,int) ;
 int bm_isr_enable_write (int ,int) ;
 int bm_isr_status_clear (int ,int) ;
 int bm_isr_uninhibit (int ) ;
 int bm_mc_finish (int ) ;
 scalar_t__ bm_mc_init (int ) ;
 int * bm_rcr_cce_prefetch ;
 int bm_rcr_cce_update ;
 int bm_rcr_cci_update ;
 int bm_rcr_finish (int ) ;
 int bm_rcr_get_fill (int ) ;
 scalar_t__ bm_rcr_init (int ,int,int) ;
 int bm_rcr_pce_commit ;
 int bm_rcr_pci_commit ;
 int bm_rcr_pvb_commit ;
 int bman_depletion_init (struct bman_depletion*) ;





 int memset (int *,int ,int) ;
 int portal_isr ;

__attribute__((used)) static t_Error bman_create_portal(t_BmPortal *p_BmPortal,
                                  uint32_t flags,
                                  const struct bman_depletion *pools)
{
    int ret = 0;
    uint8_t bpid = 0;
    e_BmPortalRcrConsumeMode rcr_cmode;
    e_BmPortalProduceMode pmode;

    pmode = 130;
    rcr_cmode = (flags & BMAN_PORTAL_FLAG_CACHE) ? 129 : 128;

    switch (pmode)
    {
        case 131:
            p_BmPortal->cbs[BM_RCR_RING].f_BmCommitCb = bm_rcr_pci_commit;
            break;
        case 132:
            p_BmPortal->cbs[BM_RCR_RING].f_BmCommitCb = bm_rcr_pce_commit;
            break;
        case 130:
            p_BmPortal->cbs[BM_RCR_RING].f_BmCommitCb = bm_rcr_pvb_commit;
            break;
    }
    switch (rcr_cmode)
    {
        case 128:
            p_BmPortal->cbs[BM_RCR_RING].f_BmUpdateCb = bm_rcr_cci_update;
            p_BmPortal->cbs[BM_RCR_RING].f_BmPrefetchCb = ((void*)0);
            break;
        case 129:
            p_BmPortal->cbs[BM_RCR_RING].f_BmUpdateCb = bm_rcr_cce_update;
            p_BmPortal->cbs[BM_RCR_RING].f_BmPrefetchCb = bm_rcr_cce_prefetch;
            break;
    }

    if (bm_rcr_init(p_BmPortal->p_BmPortalLow, pmode, rcr_cmode)) {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("RCR initialization failed"));
        goto fail_rcr;
    }
    if (bm_mc_init(p_BmPortal->p_BmPortalLow)) {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("MC initialization failed"));
        goto fail_mc;
    }
    p_BmPortal->pools[0] = *pools;
    bman_depletion_init(&p_BmPortal->pools[1]);
    while (bpid < BM_MAX_NUM_OF_POOLS) {


        bm_isr_bscn_mask(p_BmPortal->p_BmPortalLow, bpid, 0);
        bpid++;
    }
    p_BmPortal->flags = flags;
    p_BmPortal->slowpoll = 0;
    p_BmPortal->rcrProd = p_BmPortal->rcrCons = 0;
    memset(&p_BmPortal->depletionPoolsTable, 0, sizeof(p_BmPortal->depletionPoolsTable));

    bm_isr_disable_write(p_BmPortal->p_BmPortalLow, 0xffffffff);
    bm_isr_status_clear(p_BmPortal->p_BmPortalLow, 0xffffffff);
    bm_isr_enable_write(p_BmPortal->p_BmPortalLow, BM_PIRQ_RCRI | BM_PIRQ_BSCN);
    if (flags & BMAN_PORTAL_FLAG_IRQ)
    {
        XX_SetIntr(p_BmPortal->irq, portal_isr, p_BmPortal);
        XX_EnableIntr(p_BmPortal->irq);

        bm_isr_uninhibit(p_BmPortal->p_BmPortalLow);
    } else

        flags &= ~BMAN_PORTAL_FLAG_WAIT;

    bm_isr_disable_write(p_BmPortal->p_BmPortalLow, (uint32_t)~BM_PIRQ_RCRI);
    if (!(flags & BMAN_PORTAL_FLAG_RECOVER) ||
        !(flags & BMAN_PORTAL_FLAG_WAIT))
        ret = bm_rcr_get_fill(p_BmPortal->p_BmPortalLow);
    if (ret) {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("RCR unclean, need recovery"));
        goto fail_rcr_empty;
    }
    bm_isr_disable_write(p_BmPortal->p_BmPortalLow, 0);
    return E_OK;
fail_rcr_empty:
    bm_mc_finish(p_BmPortal->p_BmPortalLow);
fail_mc:
    bm_rcr_finish(p_BmPortal->p_BmPortalLow);
fail_rcr:
    XX_Free(p_BmPortal);
    return ERROR_CODE(E_INVALID_STATE);
}
