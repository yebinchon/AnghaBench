
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct al_udma {TYPE_3__* udma_regs; int name; } ;
typedef scalar_t__ al_bool ;
struct TYPE_4__ {int data_cfg_2; } ;
struct TYPE_5__ {TYPE_1__ s2m_wr; } ;
struct TYPE_6__ {TYPE_2__ s2m; } ;


 int AL_REG_FIELD_SET (scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ AL_TRUE ;
 int EINVAL ;
 int UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_MASK ;
 int UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_SHIFT ;
 scalar_t__ UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC ;
 scalar_t__ UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC ;
 int al_err (char*,int ) ;
 scalar_t__ al_reg_read32 (int *) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_udma_s2m_no_desc_cfg_set(struct al_udma *udma, al_bool drop_packet, al_bool gen_interrupt, uint32_t wait_for_desc_timeout)
{
 uint32_t reg;

 reg = al_reg_read32(&udma->udma_regs->s2m.s2m_wr.data_cfg_2);

 if ((drop_packet == AL_TRUE) && (wait_for_desc_timeout == 0)) {
  al_err("udam [%s]: setting timeout to 0 will cause the udma to wait forever instead of dropping the packet", udma->name);
  return -EINVAL;
 }

 if (drop_packet == AL_TRUE)
  reg |= UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC;
 else
  reg &= ~UDMA_S2M_WR_DATA_CFG_2_DROP_IF_NO_DESC;

 if (gen_interrupt == AL_TRUE)
  reg |= UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC;
 else
  reg &= ~UDMA_S2M_WR_DATA_CFG_2_HINT_IF_NO_DESC;

 AL_REG_FIELD_SET(reg, UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_MASK, UDMA_S2M_WR_DATA_CFG_2_DESC_WAIT_TIMER_SHIFT, wait_for_desc_timeout);

 al_reg_write32(&udma->udma_regs->s2m.s2m_wr.data_cfg_2, reg);

 return 0;
}
