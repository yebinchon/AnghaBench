
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_eth_io_rx_desc {int ctrl; } ;


 int ENA_ETH_IO_RX_DESC_FIRST_MASK ;
 int ENA_ETH_IO_RX_DESC_FIRST_SHIFT ;

__attribute__((used)) static inline void set_ena_eth_io_rx_desc_first(struct ena_eth_io_rx_desc *p, uint8_t val)
{
 p->ctrl |= (val << ENA_ETH_IO_RX_DESC_FIRST_SHIFT) & ENA_ETH_IO_RX_DESC_FIRST_MASK;
}
