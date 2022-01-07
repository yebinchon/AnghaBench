
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_kg_regs {int fmkg_eeer; } ;


 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_kg_set_exception(struct fman_kg_regs *regs,
    uint32_t exception,
    bool enable)
{
 uint32_t tmp;

 tmp = ioread32be(&regs->fmkg_eeer);

 if (enable) {
  tmp |= exception;
 } else {
  tmp &= ~exception;
 }

 iowrite32be(tmp, &regs->fmkg_eeer);
}
