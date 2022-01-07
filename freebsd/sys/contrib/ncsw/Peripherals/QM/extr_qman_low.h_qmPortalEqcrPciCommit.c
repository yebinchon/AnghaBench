
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct qm_eqcr {scalar_t__ pmode; int vbit; scalar_t__ busy; TYPE_1__* cursor; int available; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct TYPE_3__ {int __dont_write_directly__verb; } ;


 int ASSERT_COND (int) ;
 int EQCR_COMMIT_CHECKS (struct qm_eqcr*) ;
 int EQCR_INC (struct qm_eqcr*) ;
 int EQCR_PI_CINH ;
 int EQCR_PTR2IDX (TYPE_1__*) ;
 int dcbf_64 (TYPE_1__*) ;
 scalar_t__ e_QmPortalPCI ;
 int mb () ;
 int qm_out (int ,int ) ;

__attribute__((used)) static __inline__ void qmPortalEqcrPciCommit(struct qm_portal *portal, uint8_t myverb)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;




    eqcr->cursor->__dont_write_directly__verb = (uint8_t)(myverb | eqcr->vbit);
    EQCR_INC(eqcr);
    eqcr->available--;
    dcbf_64(eqcr->cursor);
    mb();
    qm_out(EQCR_PI_CINH, EQCR_PTR2IDX(eqcr->cursor));



}
