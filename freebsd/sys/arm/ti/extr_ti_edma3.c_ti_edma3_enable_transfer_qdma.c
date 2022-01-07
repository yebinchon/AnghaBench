
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int TI_EDMA3CC_S_QEESR (int ) ;
 unsigned int TI_EDMA3_NUM_QDMA_CHS ;
 int ti_edma3_cc_wr_4 (int ,int) ;

int
ti_edma3_enable_transfer_qdma(unsigned int ch)
{
 if (ch >= TI_EDMA3_NUM_QDMA_CHS)
  return (EINVAL);


 ti_edma3_cc_wr_4(TI_EDMA3CC_S_QEESR(0), (1 << ch));

 return 0;
}
