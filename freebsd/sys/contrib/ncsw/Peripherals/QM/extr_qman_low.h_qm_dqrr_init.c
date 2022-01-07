
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int t_Error ;
struct qm_portal_config {int cpu; } ;
struct TYPE_2__ {int addr_ce; } ;
struct qm_dqrr {int ring; int pi; int ci; int cursor; int vbit; int ithresh; int dmode; int cmode; int flags; int pmode; int fill; } ;
struct qm_portal {TYPE_1__ addr; struct qm_portal_config config; struct qm_dqrr dqrr; } ;
typedef int e_QmPortalProduceMode ;
typedef int e_QmPortalDqrrConsumeMode ;
typedef int e_QmPortalDequeueMode ;


 int CFG ;
 int CL_DQRR ;
 int DQRR_CI_CINH ;
 int DQRR_ITR ;
 int DQRR_PDQCR ;
 int DQRR_PI_CINH ;
 int DQRR_SDQCR ;
 int DQRR_VDQCR ;
 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_INVALID_STATE ;
 int E_OK ;
 int QM_BIND_DQRR ;
 int QM_DQRR_FLAG_RE ;
 int QM_DQRR_FLAG_SE ;
 int QM_DQRR_SIZE ;
 scalar_t__ QM_DQRR_VERB_VBIT ;
 int UNUSED (int ) ;
 scalar_t__ __qm_portal_bind (struct qm_portal*,int ) ;
 int cyc_diff (int,int,int) ;
 int ptr_ADD (int ,int ) ;
 int qm_in (int ) ;
 int qm_out (int ,int) ;

__attribute__((used)) static __inline__ t_Error qm_dqrr_init(struct qm_portal *portal, e_QmPortalDequeueMode dmode,
        e_QmPortalProduceMode pmode, e_QmPortalDqrrConsumeMode cmode,
        uint8_t max_fill, int stash_ring, int stash_data)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;
    const struct qm_portal_config *config = &portal->config;
    uint32_t cfg;

    if (__qm_portal_bind(portal, QM_BIND_DQRR))
        return ERROR_CODE(E_BUSY);
    if ((stash_ring || stash_data) && (config->cpu == -1))
        return ERROR_CODE(E_INVALID_STATE);

    qm_out(DQRR_SDQCR, 0);
    qm_out(DQRR_VDQCR, 0);
    qm_out(DQRR_PDQCR, 0);
    dqrr->ring = ptr_ADD(portal->addr.addr_ce, CL_DQRR);
    dqrr->pi = (uint8_t)(qm_in(DQRR_PI_CINH) & (QM_DQRR_SIZE - 1));
    dqrr->ci = (uint8_t)(qm_in(DQRR_CI_CINH) & (QM_DQRR_SIZE - 1));
    dqrr->cursor = dqrr->ring + dqrr->ci;
    dqrr->fill = cyc_diff(QM_DQRR_SIZE, dqrr->ci, dqrr->pi);
    dqrr->vbit = (uint8_t)((qm_in(DQRR_PI_CINH) & QM_DQRR_SIZE) ?
            QM_DQRR_VERB_VBIT : 0);
    dqrr->ithresh = (uint8_t)qm_in(DQRR_ITR);
    UNUSED(pmode);


    cfg = (qm_in(CFG) & 0xff000f00) |
        ((max_fill & (QM_DQRR_SIZE - 1)) << 20) |
        ((dmode & 1) << 18) |
        ((cmode & 3) << 16) |
        (stash_ring ? 0x80 : 0) |
        (0 ? 0x40 : 0) |
        (stash_data ? 0x20 : 0) |
        (0 ? 0x10 : 0);
    qm_out(CFG, cfg);
    return E_OK;
}
