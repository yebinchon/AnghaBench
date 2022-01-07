
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_dma_regs {int fmdmmr; } ;


 scalar_t__ DMA_MODE_EMER_READ ;
 scalar_t__ DMA_MODE_EMER_WRITE ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_set_dma_emergency(struct fman_dma_regs *dma_rg,
    bool is_write,
    bool enable)
{
 uint32_t msk;

 msk = (uint32_t)(is_write ? DMA_MODE_EMER_WRITE : DMA_MODE_EMER_READ);

 if (enable)
  iowrite32be(ioread32be(&dma_rg->fmdmmr) | msk,
    &dma_rg->fmdmmr);
 else
  iowrite32be(ioread32be(&dma_rg->fmdmmr) & ~msk,
    &dma_rg->fmdmmr);
}
