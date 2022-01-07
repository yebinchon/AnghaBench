
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_pth_time {int femto; scalar_t__ seconds; } ;
struct TYPE_3__ {int system_time_seconds; int system_time_subseconds_msb; } ;
struct TYPE_4__ {TYPE_1__ pth; } ;


 scalar_t__ al_reg_read32 (int *) ;

int al_eth_pth_systime_read(struct al_hal_eth_adapter *adapter,
       struct al_eth_pth_time *systime)
{
 uint32_t reg;




 reg = al_reg_read32(&adapter->ec_regs_base->pth.system_time_subseconds_msb);
 systime->femto = (uint64_t)reg << 18;
 reg = al_reg_read32(&adapter->ec_regs_base->pth.system_time_seconds);
 systime->seconds = reg;

 return 0;
}
