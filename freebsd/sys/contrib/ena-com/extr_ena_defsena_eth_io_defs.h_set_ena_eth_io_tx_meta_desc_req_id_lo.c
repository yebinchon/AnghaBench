
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_tx_meta_desc {int len_ctrl; } ;


 int ENA_ETH_IO_TX_META_DESC_REQ_ID_LO_MASK ;

__attribute__((used)) static inline void set_ena_eth_io_tx_meta_desc_req_id_lo(struct ena_eth_io_tx_meta_desc *p, uint32_t val)
{
 p->len_ctrl |= val & ENA_ETH_IO_TX_META_DESC_REQ_ID_LO_MASK;
}
