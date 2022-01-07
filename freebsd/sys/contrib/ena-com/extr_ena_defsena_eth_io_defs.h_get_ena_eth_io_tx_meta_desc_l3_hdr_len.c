
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_tx_meta_desc {int word2; } ;


 int ENA_ETH_IO_TX_META_DESC_L3_HDR_LEN_MASK ;

__attribute__((used)) static inline uint32_t get_ena_eth_io_tx_meta_desc_l3_hdr_len(const struct ena_eth_io_tx_meta_desc *p)
{
 return p->word2 & ENA_ETH_IO_TX_META_DESC_L3_HDR_LEN_MASK;
}
