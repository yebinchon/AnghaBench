
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct fman_kg_regs {int fmkg_gdv1r; int fmkg_gdv0r; } ;


 int iowrite32be (int ,int *) ;

void fman_kg_set_dflt_val(struct fman_kg_regs *regs,
    uint8_t def_id,
    uint32_t val)
{
 if(def_id == 0)
  iowrite32be(val, &regs->fmkg_gdv0r);
 else
  iowrite32be(val, &regs->fmkg_gdv1r);
}
