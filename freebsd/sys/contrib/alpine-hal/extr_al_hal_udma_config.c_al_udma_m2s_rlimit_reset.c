
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_4__ {int ctrl_cycle_cnt; } ;
struct TYPE_5__ {TYPE_1__ m2s_rate_limiter; } ;
struct TYPE_6__ {TYPE_2__ m2s; } ;


 int UDMA_M2S_RATE_LIMITER_CTRL_CYCLE_CNT_RST ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

int al_udma_m2s_rlimit_reset(struct al_udma *udma)
{
 uint32_t reg = al_reg_read32(
   &udma->udma_regs->m2s.m2s_rate_limiter.ctrl_cycle_cnt);
 reg |= UDMA_M2S_RATE_LIMITER_CTRL_CYCLE_CNT_RST;
 al_reg_write32(&udma->udma_regs->m2s.m2s_rate_limiter.ctrl_cycle_cnt,
      reg);
 return 0;
}
