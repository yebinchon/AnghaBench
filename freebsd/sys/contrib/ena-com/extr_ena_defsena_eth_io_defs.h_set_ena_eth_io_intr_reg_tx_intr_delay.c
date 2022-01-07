
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_intr_reg {int intr_control; } ;


 int ENA_ETH_IO_INTR_REG_TX_INTR_DELAY_MASK ;
 int ENA_ETH_IO_INTR_REG_TX_INTR_DELAY_SHIFT ;

__attribute__((used)) static inline void set_ena_eth_io_intr_reg_tx_intr_delay(struct ena_eth_io_intr_reg *p, uint32_t val)
{
 p->intr_control |= (val << ENA_ETH_IO_INTR_REG_TX_INTR_DELAY_SHIFT) & ENA_ETH_IO_INTR_REG_TX_INTR_DELAY_MASK;
}
