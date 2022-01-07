
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_kg_regs {int * fmkg_indirect; } ;
struct fman_kg_pe_regs {int fmkg_pe_cpp; } ;


 int iowrite32be (int ,int *) ;

void fman_kg_write_cpp(struct fman_kg_regs *regs, uint32_t cpp)
{
 struct fman_kg_pe_regs *kgpe_regs;

 kgpe_regs = (struct fman_kg_pe_regs *)&(regs->fmkg_indirect[0]);

 iowrite32be(cpp, &kgpe_regs->fmkg_pe_cpp);
}
