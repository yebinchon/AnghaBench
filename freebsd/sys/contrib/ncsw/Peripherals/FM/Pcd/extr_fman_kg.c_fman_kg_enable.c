
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_kg_regs {int fmkg_gcr; } ;


 int FM_KG_KGGCR_EN ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_kg_enable(struct fman_kg_regs *regs)
{
 iowrite32be(ioread32be(&regs->fmkg_gcr) | FM_KG_KGGCR_EN,
   &regs->fmkg_gcr);
}
