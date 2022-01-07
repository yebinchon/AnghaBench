
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_dma_regs {int fmdmsr; int fmdmmr; } ;


 int DMA_MODE_BER ;
 int DMA_MODE_ECC ;
 int DMA_STATUS_BUS_ERR ;
 int DMA_STATUS_FM_SPDAT_ECC ;
 int DMA_STATUS_FM_WRITE_ECC ;
 int DMA_STATUS_READ_ECC ;
 int DMA_STATUS_SYSTEM_WRITE_ECC ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

uint32_t fman_get_dma_err_event(struct fman_dma_regs *dma_rg)
{
 uint32_t status, mask;

 status = ioread32be(&dma_rg->fmdmsr);
 mask = ioread32be(&dma_rg->fmdmmr);


 if ((mask & DMA_MODE_BER) != DMA_MODE_BER)
  status &= ~DMA_STATUS_BUS_ERR;


 if ((mask & DMA_MODE_ECC) != DMA_MODE_ECC)
  status &= ~(DMA_STATUS_FM_SPDAT_ECC |
          DMA_STATUS_READ_ECC |
    DMA_STATUS_SYSTEM_WRITE_ECC |
    DMA_STATUS_FM_WRITE_ECC);


 iowrite32be(status, &dma_rg->fmdmsr);

 return status;
}
