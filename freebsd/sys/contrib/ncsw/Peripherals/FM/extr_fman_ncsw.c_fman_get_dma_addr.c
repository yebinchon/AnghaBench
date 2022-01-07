
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct fman_dma_regs {int fmdmtah; int fmdmtal; } ;


 scalar_t__ ioread32be (int *) ;

uint64_t fman_get_dma_addr(struct fman_dma_regs *dma_rg)
{
 uint64_t addr;

 addr = (uint64_t)ioread32be(&dma_rg->fmdmtal);
 addr |= ((uint64_t)(ioread32be(&dma_rg->fmdmtah)) << 32);

 return addr;
}
