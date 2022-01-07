
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_portal {int dummy; } ;


 int DQRR_ITR ;
 int qm_out (int ,int ) ;

__attribute__((used)) static __inline__ void qm_dqrr_set_ithresh(struct qm_portal *portal, uint8_t ithresh)
{
    qm_out(DQRR_ITR, ithresh);
}
