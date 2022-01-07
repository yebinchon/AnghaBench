
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int TI_EDMA3CC_EMCR ;
 int TI_EDMA3CC_EMCRH ;
 int TI_EDMA3CC_S_EESR (int ) ;
 int TI_EDMA3CC_S_EESRH (int ) ;
 int TI_EDMA3CC_S_SECR (int ) ;
 int TI_EDMA3CC_S_SECRH (int ) ;
 unsigned int TI_EDMA3_NUM_DMA_CHS ;
 int ti_edma3_cc_wr_4 (int ,int) ;

int
ti_edma3_enable_transfer_event(unsigned int ch)
{
 if (ch >= TI_EDMA3_NUM_DMA_CHS)
  return (EINVAL);



 if(ch < 32) {
  ti_edma3_cc_wr_4(TI_EDMA3CC_S_SECR(0), (1 << ch));
  ti_edma3_cc_wr_4(TI_EDMA3CC_EMCR, (1 << ch));
  ti_edma3_cc_wr_4(TI_EDMA3CC_S_EESR(0), (1 << ch));
 } else {
  ti_edma3_cc_wr_4(TI_EDMA3CC_S_SECRH(0), 1 << (ch - 32));
  ti_edma3_cc_wr_4(TI_EDMA3CC_EMCRH, 1 << (ch - 32));
  ti_edma3_cc_wr_4(TI_EDMA3CC_S_EESRH(0), 1 << (ch - 32));
 }

 return 0;
}
