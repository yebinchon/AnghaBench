
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_kg_regs {int * fmkg_indirect; } ;
struct fman_kg_pe_regs {int fmkg_pe_sp; } ;


 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_kg_write_sp(struct fman_kg_regs *regs, uint32_t sp, bool add)
{

 struct fman_kg_pe_regs *kgpe_regs;
 uint32_t tmp;

 kgpe_regs = (struct fman_kg_pe_regs *)&(regs->fmkg_indirect[0]);
 tmp = ioread32be(&kgpe_regs->fmkg_pe_sp);

 if (add)
  tmp |= sp;
 else
  tmp &= ~sp;

 iowrite32be(tmp, &kgpe_regs->fmkg_pe_sp);

}
