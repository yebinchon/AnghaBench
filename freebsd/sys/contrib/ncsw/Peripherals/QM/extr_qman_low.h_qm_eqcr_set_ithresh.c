
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_eqcr {int ithresh; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int EQCR_ITR ;
 int qm_out (int ,int ) ;

__attribute__((used)) static __inline__ void qm_eqcr_set_ithresh(struct qm_portal *portal, uint8_t ithresh)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
    eqcr->ithresh = ithresh;
    qm_out(EQCR_ITR, ithresh);
}
