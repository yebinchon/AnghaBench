
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_3__ {int mhash_table_data; int mhash_table_addr; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;


 scalar_t__ AL_ETH_FWD_MAC_HASH_NUM ;
 int AL_FIELD_MASK (int,int) ;
 int AL_REG_FIELD_SET (scalar_t__,int ,int,int ) ;
 int al_assert (int) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_eth_fwd_mhash_table_set(struct al_hal_eth_adapter *adapter, uint32_t idx, uint8_t udma_mask, uint8_t qid)
{
 uint32_t val = 0;
 al_assert(idx < AL_ETH_FWD_MAC_HASH_NUM);

 AL_REG_FIELD_SET(val, AL_FIELD_MASK(3,0), 0, udma_mask);
 AL_REG_FIELD_SET(val, AL_FIELD_MASK(5,4), 4, qid);

 al_reg_write32(&adapter->ec_regs_base->rfw.mhash_table_addr, idx);
 al_reg_write32(&adapter->ec_regs_base->rfw.mhash_table_data, val);
 return 0;
}
