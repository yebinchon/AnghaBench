
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_tx_desc {int meta_ctrl; } ;


 int ENA_ETH_IO_TX_DESC_DF_MASK ;
 int ENA_ETH_IO_TX_DESC_DF_SHIFT ;

__attribute__((used)) static inline void set_ena_eth_io_tx_desc_DF(struct ena_eth_io_tx_desc *p, uint32_t val)
{
 p->meta_ctrl |= (val << ENA_ETH_IO_TX_DESC_DF_SHIFT) & ENA_ETH_IO_TX_DESC_DF_MASK;
}
