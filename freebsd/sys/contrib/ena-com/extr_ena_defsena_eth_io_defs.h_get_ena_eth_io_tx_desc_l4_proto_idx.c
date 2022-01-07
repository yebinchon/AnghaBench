
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_tx_desc {int meta_ctrl; } ;


 int ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_MASK ;
 int ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_SHIFT ;

__attribute__((used)) static inline uint32_t get_ena_eth_io_tx_desc_l4_proto_idx(const struct ena_eth_io_tx_desc *p)
{
 return (p->meta_ctrl & ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_MASK) >> ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_SHIFT;
}
