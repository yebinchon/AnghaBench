
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_tx_meta_desc {int word2; } ;


 int ENA_ETH_IO_TX_META_DESC_L3_HDR_LEN_MASK ;

__attribute__((used)) static inline void set_ena_eth_io_tx_meta_desc_l3_hdr_len(struct ena_eth_io_tx_meta_desc *p, uint32_t val)
{
 p->word2 |= val & ENA_ETH_IO_TX_META_DESC_L3_HDR_LEN_MASK;
}
