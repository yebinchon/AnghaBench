
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int clock_period_msb; int clock_period_lsb; } ;
struct TYPE_4__ {TYPE_1__ pth; } ;


 int AL_BIT_MASK (int) ;
 int EC_PTH_CLOCK_PERIOD_LSB_VAL_SHIFT ;
 int al_reg_write32 (int *,int) ;

int al_eth_pth_clk_period_write(struct al_hal_eth_adapter *adapter,
    uint64_t clk_period)
{
 uint32_t reg;




 reg = (clk_period & AL_BIT_MASK(18)) << EC_PTH_CLOCK_PERIOD_LSB_VAL_SHIFT;
 al_reg_write32(&adapter->ec_regs_base->pth.clock_period_lsb, reg);
 reg = clk_period >> 18;
 al_reg_write32(&adapter->ec_regs_base->pth.clock_period_msb, reg);

 return 0;
}
