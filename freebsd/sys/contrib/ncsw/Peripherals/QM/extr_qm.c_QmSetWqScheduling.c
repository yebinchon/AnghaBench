
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {TYPE_1__* p_QmRegs; } ;
typedef TYPE_2__ t_Qm ;
typedef size_t e_QmWqClass ;
struct TYPE_5__ {int * wq_cs_cfg; } ;


 int ASSERT_COND (TYPE_2__*) ;
 int WRITE_UINT32 (int ,int ) ;

__attribute__((used)) static __inline__ void QmSetWqScheduling(t_Qm *p_Qm,
                                         e_QmWqClass wqClass,
                                         uint8_t csElev,
                                         uint8_t csw2,
                                         uint8_t csw3,
                                         uint8_t csw4,
                                         uint8_t csw5,
                                         uint8_t csw6,
                                         uint8_t csw7)
{
    ASSERT_COND(p_Qm);

    WRITE_UINT32(p_Qm->p_QmRegs->wq_cs_cfg[wqClass],
                 (uint32_t)(((csElev & 0xff) << 24) |
                 ((csw2 & 0x7) << 20) |
                 ((csw3 & 0x7) << 16) |
                 ((csw4 & 0x7) << 12) |
                 ((csw5 & 0x7) << 8) |
                 ((csw6 & 0x7) << 4) |
                 (csw7 & 0x7)));
}
