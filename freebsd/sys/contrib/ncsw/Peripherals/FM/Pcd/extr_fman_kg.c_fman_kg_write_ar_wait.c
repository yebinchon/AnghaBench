
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_kg_regs {int fmkg_ar; } ;


 int EINVAL ;
 int FM_KG_KGAR_GO ;
 int FM_PCD_KG_KGAR_ERR ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

int fman_kg_write_ar_wait(struct fman_kg_regs *regs, uint32_t fmkg_ar)
{
 iowrite32be(fmkg_ar, &regs->fmkg_ar);

 while ((fmkg_ar = ioread32be(&regs->fmkg_ar)) & FM_KG_KGAR_GO) ;
 if (fmkg_ar & FM_PCD_KG_KGAR_ERR)
  return -EINVAL;
 return 0;
}
