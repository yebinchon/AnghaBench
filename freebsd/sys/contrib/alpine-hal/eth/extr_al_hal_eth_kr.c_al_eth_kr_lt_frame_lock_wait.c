
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct al_hal_eth_adapter {int name; } ;
typedef enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;
typedef int al_bool ;


 int AL_ETH_KR_PMD_STATUS ;
 int AL_ETH_KR_PMD_STATUS_FAILURE_SHIFT ;
 int AL_ETH_KR_PMD_STATUS_RECEIVER_FRAME_LOCK_SHIFT ;
 int AL_ETH_LT_REGS ;
 int AL_FALSE ;
 scalar_t__ AL_REG_BIT_GET (scalar_t__,int ) ;
 int AL_TRUE ;
 int al_dbg (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ al_eth_an_lt_reg_read (struct al_hal_eth_adapter*,int ,int ,int) ;
 int al_info (char*,int ,scalar_t__,...) ;
 int al_udelay (int) ;

al_bool al_eth_kr_lt_frame_lock_wait(struct al_hal_eth_adapter *adapter,
         enum al_eth_an_lt_lane lane,
         uint32_t timeout)
{
 uint32_t loop;
 uint16_t reg = 0;

 for (loop = 0; loop < timeout; loop++) {
  reg = al_eth_an_lt_reg_read(adapter, AL_ETH_KR_PMD_STATUS, AL_ETH_LT_REGS, lane);

  if (AL_REG_BIT_GET(reg, AL_ETH_KR_PMD_STATUS_FAILURE_SHIFT)) {
   al_info("[%s]: Failed on Training Failure."
          " loops %d PMD STATUS 0x%04x\n",
          adapter->name, loop, reg);

   return AL_FALSE;
  }
  if (AL_REG_BIT_GET(reg,
   AL_ETH_KR_PMD_STATUS_RECEIVER_FRAME_LOCK_SHIFT)) {
   al_dbg("[%s]: Frame lock received."
          " loops %d PMD STATUS 0x%04x\n",
          adapter->name, loop, reg);

   return AL_TRUE;
  }
  al_udelay(1);
 }
 al_info("[%s]: Failed on timeout. PMD STATUS 0x%04x\n",
   adapter->name, reg);

 return AL_FALSE;
}
