
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_portal {int dummy; } ;


 int CFG ;
 int QM_DQRR_SIZE ;
 int qm_in (int ) ;
 int qm_out (int ,int) ;

__attribute__((used)) static __inline__ void qm_dqrr_set_maxfill(struct qm_portal *portal, uint8_t mf)
{
    qm_out(CFG, (qm_in(CFG) & 0xff0fffff) |
        ((mf & (QM_DQRR_SIZE - 1)) << 20));
}
