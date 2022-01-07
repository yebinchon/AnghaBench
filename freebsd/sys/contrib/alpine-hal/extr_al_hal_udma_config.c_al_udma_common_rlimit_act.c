
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct udma_rlimit_common {int sw_ctrl; int cfg_1s; } ;
typedef enum al_udma_m2s_rlimit_action { ____Placeholder_al_udma_m2s_rlimit_action } al_udma_m2s_rlimit_action ;





 int EINVAL ;
 int UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_EN ;
 int UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_PAUSE ;
 int UDMA_M2S_STREAM_RATE_LIMITER_SW_CTRL_RST_TOKEN_CNT ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

__attribute__((used)) static int al_udma_common_rlimit_act(struct udma_rlimit_common *regs,
       enum al_udma_m2s_rlimit_action act)
{
 uint32_t reg;

 switch (act) {
 case 130:
  reg = al_reg_read32(&regs->cfg_1s);
  reg |= UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_EN;
  al_reg_write32(&regs->cfg_1s, reg);
  break;
 case 129:
  reg = al_reg_read32(&regs->cfg_1s);
  reg |= UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_PAUSE;
  al_reg_write32(&regs->cfg_1s, reg);
  break;
 case 128:
  reg = al_reg_read32(&regs->sw_ctrl);
  reg |= UDMA_M2S_STREAM_RATE_LIMITER_SW_CTRL_RST_TOKEN_CNT;
  al_reg_write32(&regs->sw_ctrl, reg);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
