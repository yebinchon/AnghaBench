
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_tx_meta_desc {int len_ctrl; } ;


 int ENA_ETH_IO_TX_META_DESC_EXT_VALID_MASK ;
 int ENA_ETH_IO_TX_META_DESC_EXT_VALID_SHIFT ;

__attribute__((used)) static inline uint32_t get_ena_eth_io_tx_meta_desc_ext_valid(const struct ena_eth_io_tx_meta_desc *p)
{
 return (p->len_ctrl & ENA_ETH_IO_TX_META_DESC_EXT_VALID_MASK) >> ENA_ETH_IO_TX_META_DESC_EXT_VALID_SHIFT;
}
