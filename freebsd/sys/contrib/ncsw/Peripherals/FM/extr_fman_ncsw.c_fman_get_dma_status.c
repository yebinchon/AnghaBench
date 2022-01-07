
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_dma_regs {int fmdmsr; } ;


 int ioread32be (int *) ;

uint32_t fman_get_dma_status(struct fman_dma_regs *dma_rg)
{
 return ioread32be(&dma_rg->fmdmsr);
}
