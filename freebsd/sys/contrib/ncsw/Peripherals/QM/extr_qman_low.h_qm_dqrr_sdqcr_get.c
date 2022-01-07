
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qm_portal {int dummy; } ;


 int DQRR_SDQCR ;
 int qm_in (int ) ;

__attribute__((used)) static __inline__ uint32_t qm_dqrr_sdqcr_get(struct qm_portal *portal)
{
    return qm_in(DQRR_SDQCR);
}
