
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qm_portal {int dummy; } ;


 int DQRR_VDQCR ;
 int qm_out (int ,int ) ;

__attribute__((used)) static __inline__ void qm_dqrr_vdqcr_set(struct qm_portal *portal, uint32_t vdqcr)
{
    qm_out(DQRR_VDQCR, vdqcr);
}
