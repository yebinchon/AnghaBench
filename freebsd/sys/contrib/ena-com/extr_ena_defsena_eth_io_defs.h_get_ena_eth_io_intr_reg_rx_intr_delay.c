
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_intr_reg {int intr_control; } ;


 int ENA_ETH_IO_INTR_REG_RX_INTR_DELAY_MASK ;

__attribute__((used)) static inline uint32_t get_ena_eth_io_intr_reg_rx_intr_delay(const struct ena_eth_io_intr_reg *p)
{
 return p->intr_control & ENA_ETH_IO_INTR_REG_RX_INTR_DELAY_MASK;
}
