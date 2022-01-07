
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
typedef scalar_t__ al_bool ;
struct TYPE_3__ {int hdr_split; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;


 int AL_REG_FIELD_SET (int ,int ,int ,int ) ;
 scalar_t__ AL_TRUE ;
 int EC_RFW_HDR_SPLIT_DEF_LEN_MASK ;
 int EC_RFW_HDR_SPLIT_DEF_LEN_SHIFT ;
 int EC_RFW_HDR_SPLIT_EN ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

int al_eth_rx_header_split_config(struct al_hal_eth_adapter *adapter, al_bool enable, uint32_t header_len)
{
 uint32_t reg;

 reg = al_reg_read32(&adapter->ec_regs_base->rfw.hdr_split);
 if (enable == AL_TRUE)
  reg |= EC_RFW_HDR_SPLIT_EN;
 else
  reg &= ~EC_RFW_HDR_SPLIT_EN;

 AL_REG_FIELD_SET(reg, EC_RFW_HDR_SPLIT_DEF_LEN_MASK, EC_RFW_HDR_SPLIT_DEF_LEN_SHIFT, header_len);
 al_reg_write32(&adapter->ec_regs_base->rfw.hdr_split, reg);
 return 0;
}
