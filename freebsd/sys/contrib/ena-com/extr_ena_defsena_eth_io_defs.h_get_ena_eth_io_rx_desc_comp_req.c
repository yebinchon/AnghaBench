
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_eth_io_rx_desc {int ctrl; } ;


 int ENA_ETH_IO_RX_DESC_COMP_REQ_MASK ;
 int ENA_ETH_IO_RX_DESC_COMP_REQ_SHIFT ;

__attribute__((used)) static inline uint8_t get_ena_eth_io_rx_desc_comp_req(const struct ena_eth_io_rx_desc *p)
{
 return (p->ctrl & ENA_ETH_IO_RX_DESC_COMP_REQ_MASK) >> ENA_ETH_IO_RX_DESC_COMP_REQ_SHIFT;
}
