
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma {TYPE_3__* udma_regs; int name; } ;
typedef scalar_t__ al_bool ;
struct TYPE_4__ {int data_cfg_2; } ;
struct TYPE_5__ {TYPE_1__ s2m_wr; } ;
struct TYPE_6__ {TYPE_2__ s2m; } ;


 scalar_t__ AL_TRUE ;
 int UDMA_S2M_WR_DATA_CFG_2_FULL_LINE_MODE ;
 int al_info (char*,int ) ;
 int al_reg_write32_masked (int *,int ,int ) ;

int al_udma_s2m_full_line_write_set(struct al_udma *udma, al_bool enable)
{
 uint32_t val = 0;

 if (enable == AL_TRUE) {
  val = UDMA_S2M_WR_DATA_CFG_2_FULL_LINE_MODE;
  al_info("udma [%s]: full line write enabled\n", udma->name);
 }

 al_reg_write32_masked(&udma->udma_regs->s2m.s2m_wr.data_cfg_2,
   UDMA_S2M_WR_DATA_CFG_2_FULL_LINE_MODE,
   val);
 return 0;
}
