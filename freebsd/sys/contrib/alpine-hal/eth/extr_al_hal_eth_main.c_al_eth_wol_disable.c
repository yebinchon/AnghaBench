
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int wol_en; } ;
struct TYPE_4__ {TYPE_1__ wol; } ;


 int al_reg_write32 (int *,int ) ;

int al_eth_wol_disable(
  struct al_hal_eth_adapter *adapter)
{
 al_reg_write32(&adapter->ec_regs_base->wol.wol_en, 0);

 return 0;
}
