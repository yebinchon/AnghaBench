
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int TI_EDMA3CC_S_ESR (int ) ;
 int TI_EDMA3CC_S_ESRH (int ) ;
 unsigned int TI_EDMA3_NUM_DMA_CHS ;
 int ti_edma3_cc_wr_4 (int ,int) ;

int
ti_edma3_enable_transfer_manual(unsigned int ch)
{
 if (ch >= TI_EDMA3_NUM_DMA_CHS)
  return (EINVAL);


 if (ch < 32) {
  ti_edma3_cc_wr_4(TI_EDMA3CC_S_ESR(0), 1 << ch);
 } else {
  ti_edma3_cc_wr_4(TI_EDMA3CC_S_ESRH(0), 1 << (ch - 32));
 }

 return 0;
}
