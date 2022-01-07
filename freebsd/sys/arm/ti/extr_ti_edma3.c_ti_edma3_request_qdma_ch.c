
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;
 int TI_EDMA3CC_OPT (unsigned int) ;
 int TI_EDMA3CC_OPT_TCC_CLR ;
 int TI_EDMA3CC_OPT_TCC_SET (unsigned int) ;
 int TI_EDMA3CC_QDMAQNUM ;
 int TI_EDMA3CC_QDMAQNUM_SET (unsigned int,unsigned int) ;
 int TI_EDMA3CC_QRAE (int ) ;
 unsigned int TI_EDMA3_NUM_DMA_CHS ;
 int ti_edma3_cc_rd_4 (int ) ;
 int ti_edma3_cc_wr_4 (int ,int) ;

int
ti_edma3_request_qdma_ch(unsigned int ch, unsigned int tccn, unsigned int eqn)
{
 uint32_t reg;

 if (ch >= TI_EDMA3_NUM_DMA_CHS)
  return (EINVAL);


 reg = ti_edma3_cc_rd_4(TI_EDMA3CC_QRAE(0));
 reg |= (0x01 << ch);
 ti_edma3_cc_wr_4(TI_EDMA3CC_QRAE(0), reg);


 reg = ti_edma3_cc_rd_4(TI_EDMA3CC_QDMAQNUM);
 reg |= TI_EDMA3CC_QDMAQNUM_SET(ch, eqn);
 ti_edma3_cc_wr_4(TI_EDMA3CC_QDMAQNUM, reg);


 reg = ti_edma3_cc_rd_4(TI_EDMA3CC_OPT(ch));
 reg &= TI_EDMA3CC_OPT_TCC_CLR;
 reg |= TI_EDMA3CC_OPT_TCC_SET(ch);
 ti_edma3_cc_wr_4(TI_EDMA3CC_OPT(ch), reg);

 return 0;
}
