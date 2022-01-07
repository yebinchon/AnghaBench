
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ EDMA_TPTC0_CLK ;
 int TI_EDMA3CC_CCERRCLR ;
 int TI_EDMA3CC_DCHMAP (int) ;
 int TI_EDMA3CC_DMAQNUM (int) ;
 int TI_EDMA3CC_DMAQNUM_CLR (int) ;
 int TI_EDMA3CC_DMAQNUM_SET (int,unsigned int) ;
 int TI_EDMA3CC_DRAE (int ) ;
 int TI_EDMA3CC_DRAEH (int ) ;
 int TI_EDMA3CC_EMCR ;
 int TI_EDMA3CC_EMCRH ;
 int TI_EDMA3CC_QDMAQNUM ;
 int TI_EDMA3CC_QDMAQNUM_CLR (int) ;
 int TI_EDMA3CC_QDMAQNUM_SET (int,unsigned int) ;
 int TI_EDMA3CC_QEMCR ;
 int TI_EDMA3CC_QRAE (int ) ;
 int TI_EDMA3_NUM_DMA_CHS ;
 int TI_EDMA3_NUM_QDMA_CHS ;
 int ti_edma3_cc_rd_4 (int ) ;
 int ti_edma3_cc_wr_4 (int ,int) ;
 int ti_prcm_clk_enable (scalar_t__) ;

void
ti_edma3_init(unsigned int eqn)
{
 uint32_t reg;
 int i;




 ti_prcm_clk_enable(EDMA_TPTC0_CLK + eqn);


 ti_edma3_cc_wr_4(TI_EDMA3CC_EMCR, 0xFFFFFFFF);
 ti_edma3_cc_wr_4(TI_EDMA3CC_EMCRH, 0xFFFFFFFF);
 ti_edma3_cc_wr_4(TI_EDMA3CC_QEMCR, 0xFFFFFFFF);


 ti_edma3_cc_wr_4(TI_EDMA3CC_CCERRCLR, 0xFFFFFFFF);


 ti_edma3_cc_wr_4(TI_EDMA3CC_DRAE(0), 0xFFFFFFFF);
 ti_edma3_cc_wr_4(TI_EDMA3CC_DRAEH(0), 0xFFFFFFFF);

 for (i = 0; i < 64; i++) {
  ti_edma3_cc_wr_4(TI_EDMA3CC_DCHMAP(i), i<<5);
 }


 for (i = 0; i < TI_EDMA3_NUM_DMA_CHS; i++) {
  reg = ti_edma3_cc_rd_4(TI_EDMA3CC_DMAQNUM(i>>3));
  reg &= TI_EDMA3CC_DMAQNUM_CLR(i);
  reg |= TI_EDMA3CC_DMAQNUM_SET(i, eqn);
  ti_edma3_cc_wr_4(TI_EDMA3CC_DMAQNUM(i>>3), reg);
 }


 ti_edma3_cc_wr_4(TI_EDMA3CC_QRAE(0), (1 << TI_EDMA3_NUM_QDMA_CHS) - 1);


 for (i = 0; i < TI_EDMA3_NUM_QDMA_CHS; i++) {
  reg = ti_edma3_cc_rd_4(TI_EDMA3CC_QDMAQNUM);
  reg &= TI_EDMA3CC_QDMAQNUM_CLR(i);
  reg |= TI_EDMA3CC_QDMAQNUM_SET(i, eqn);
  ti_edma3_cc_wr_4(TI_EDMA3CC_QDMAQNUM, reg);
 }
}
