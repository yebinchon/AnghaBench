
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ena_eth_io_intr_reg {int intr_control; } ;


 int ENA_ETH_IO_INTR_REG_INTR_UNMASK_MASK ;
 int ENA_ETH_IO_INTR_REG_RX_INTR_DELAY_MASK ;
 int ENA_ETH_IO_INTR_REG_TX_INTR_DELAY_MASK ;
 int ENA_ETH_IO_INTR_REG_TX_INTR_DELAY_SHIFT ;

__attribute__((used)) static inline void ena_com_update_intr_reg(struct ena_eth_io_intr_reg *intr_reg,
        u32 rx_delay_interval,
        u32 tx_delay_interval,
        bool unmask)
{
 intr_reg->intr_control = 0;
 intr_reg->intr_control |= rx_delay_interval &
  ENA_ETH_IO_INTR_REG_RX_INTR_DELAY_MASK;

 intr_reg->intr_control |=
  (tx_delay_interval << ENA_ETH_IO_INTR_REG_TX_INTR_DELAY_SHIFT)
  & ENA_ETH_IO_INTR_REG_TX_INTR_DELAY_MASK;

 if (unmask)
  intr_reg->intr_control |= ENA_ETH_IO_INTR_REG_INTR_UNMASK_MASK;
}
