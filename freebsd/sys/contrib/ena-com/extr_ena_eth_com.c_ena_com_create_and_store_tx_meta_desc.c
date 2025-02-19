
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_eth_io_tx_meta_desc {int len_ctrl; int word2; } ;
struct ena_com_tx_meta {int mss; int l3_hdr_len; int l3_hdr_offset; int l4_hdr_len; } ;
struct ena_com_tx_ctx {struct ena_com_tx_meta ena_meta; } ;
struct ena_com_io_sq {int phase; int cached_tx_meta; } ;


 int ENA_ETH_IO_TX_META_DESC_ETH_META_TYPE_MASK ;
 int ENA_ETH_IO_TX_META_DESC_EXT_VALID_MASK ;
 int ENA_ETH_IO_TX_META_DESC_FIRST_MASK ;
 int ENA_ETH_IO_TX_META_DESC_L3_HDR_LEN_MASK ;
 int ENA_ETH_IO_TX_META_DESC_L3_HDR_OFF_MASK ;
 int ENA_ETH_IO_TX_META_DESC_L3_HDR_OFF_SHIFT ;
 int ENA_ETH_IO_TX_META_DESC_L4_HDR_LEN_IN_WORDS_MASK ;
 int ENA_ETH_IO_TX_META_DESC_L4_HDR_LEN_IN_WORDS_SHIFT ;
 int ENA_ETH_IO_TX_META_DESC_META_DESC_MASK ;
 int ENA_ETH_IO_TX_META_DESC_META_STORE_MASK ;
 int ENA_ETH_IO_TX_META_DESC_MSS_HI_MASK ;
 int ENA_ETH_IO_TX_META_DESC_MSS_HI_SHIFT ;
 int ENA_ETH_IO_TX_META_DESC_MSS_LO_MASK ;
 int ENA_ETH_IO_TX_META_DESC_MSS_LO_SHIFT ;
 int ENA_ETH_IO_TX_META_DESC_PHASE_MASK ;
 int ENA_ETH_IO_TX_META_DESC_PHASE_SHIFT ;
 int ena_com_sq_update_tail (struct ena_com_io_sq*) ;
 struct ena_eth_io_tx_meta_desc* get_sq_desc (struct ena_com_io_sq*) ;
 int memcpy (int *,struct ena_com_tx_meta*,int) ;
 int memset (struct ena_eth_io_tx_meta_desc*,int,int) ;

__attribute__((used)) static inline int ena_com_create_and_store_tx_meta_desc(struct ena_com_io_sq *io_sq,
       struct ena_com_tx_ctx *ena_tx_ctx)
{
 struct ena_eth_io_tx_meta_desc *meta_desc = ((void*)0);
 struct ena_com_tx_meta *ena_meta = &ena_tx_ctx->ena_meta;

 meta_desc = get_sq_desc(io_sq);
 memset(meta_desc, 0x0, sizeof(struct ena_eth_io_tx_meta_desc));

 meta_desc->len_ctrl |= ENA_ETH_IO_TX_META_DESC_META_DESC_MASK;

 meta_desc->len_ctrl |= ENA_ETH_IO_TX_META_DESC_EXT_VALID_MASK;


 meta_desc->word2 |= (ena_meta->mss <<
  ENA_ETH_IO_TX_META_DESC_MSS_LO_SHIFT) &
  ENA_ETH_IO_TX_META_DESC_MSS_LO_MASK;

 meta_desc->len_ctrl |= ((ena_meta->mss >> 10) <<
  ENA_ETH_IO_TX_META_DESC_MSS_HI_SHIFT) &
  ENA_ETH_IO_TX_META_DESC_MSS_HI_MASK;


 meta_desc->len_ctrl |= ENA_ETH_IO_TX_META_DESC_ETH_META_TYPE_MASK;
 meta_desc->len_ctrl |= ENA_ETH_IO_TX_META_DESC_META_STORE_MASK;
 meta_desc->len_ctrl |= (io_sq->phase <<
  ENA_ETH_IO_TX_META_DESC_PHASE_SHIFT) &
  ENA_ETH_IO_TX_META_DESC_PHASE_MASK;

 meta_desc->len_ctrl |= ENA_ETH_IO_TX_META_DESC_FIRST_MASK;
 meta_desc->word2 |= ena_meta->l3_hdr_len &
  ENA_ETH_IO_TX_META_DESC_L3_HDR_LEN_MASK;
 meta_desc->word2 |= (ena_meta->l3_hdr_offset <<
  ENA_ETH_IO_TX_META_DESC_L3_HDR_OFF_SHIFT) &
  ENA_ETH_IO_TX_META_DESC_L3_HDR_OFF_MASK;

 meta_desc->word2 |= (ena_meta->l4_hdr_len <<
  ENA_ETH_IO_TX_META_DESC_L4_HDR_LEN_IN_WORDS_SHIFT) &
  ENA_ETH_IO_TX_META_DESC_L4_HDR_LEN_IN_WORDS_MASK;

 meta_desc->len_ctrl |= ENA_ETH_IO_TX_META_DESC_META_STORE_MASK;


 memcpy(&io_sq->cached_tx_meta, ena_meta,
        sizeof(struct ena_com_tx_meta));

 return ena_com_sq_update_tail(io_sq);
}
