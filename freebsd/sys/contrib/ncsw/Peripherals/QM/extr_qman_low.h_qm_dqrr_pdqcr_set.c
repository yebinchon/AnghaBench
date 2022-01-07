
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qm_portal {int dummy; } ;


 int DQRR_PDQCR ;
 int qm_out (int ,int ) ;

__attribute__((used)) static __inline__ void qm_dqrr_pdqcr_set(struct qm_portal *portal, uint32_t pdqcr)
{
    qm_out(DQRR_PDQCR, pdqcr);
}
