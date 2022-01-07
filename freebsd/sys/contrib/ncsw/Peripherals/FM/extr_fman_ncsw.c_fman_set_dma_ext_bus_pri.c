
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_dma_regs {int fmdmmr; } ;


 int DMA_MODE_BUS_PRI_SHIFT ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_set_dma_ext_bus_pri(struct fman_dma_regs *dma_rg, uint32_t pri)
{
 uint32_t tmp;

 tmp = ioread32be(&dma_rg->fmdmmr) |
   (pri << DMA_MODE_BUS_PRI_SHIFT);

 iowrite32be(tmp, &dma_rg->fmdmmr);
}
