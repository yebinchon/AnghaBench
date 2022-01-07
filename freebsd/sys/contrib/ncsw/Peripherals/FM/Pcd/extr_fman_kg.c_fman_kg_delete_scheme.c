
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_kg_scheme_regs {int dummy; } ;
struct fman_kg_regs {int * fmkg_indirect; } ;


 int FALSE ;
 int TRUE ;
 int build_ar_scheme (int ,int ,int ,int ) ;
 int fman_kg_write_ar_wait (struct fman_kg_regs*,int ) ;
 int iowrite32be (int ,int *) ;

int fman_kg_delete_scheme(struct fman_kg_regs *regs,
    uint8_t scheme_id,
    uint8_t hwport_id)
{
 struct fman_kg_scheme_regs *kgse_regs;
 uint32_t tmp_reg;
 int err, i;

 kgse_regs = (struct fman_kg_scheme_regs *)&(regs->fmkg_indirect[0]);


 for (i = 0; i < (sizeof(struct fman_kg_scheme_regs)) / 4; ++i) {
  iowrite32be(0, ((uint32_t *)kgse_regs + i));
 }


 tmp_reg = build_ar_scheme(scheme_id, hwport_id, FALSE, TRUE);
 err = fman_kg_write_ar_wait(regs, tmp_reg);
 return err;
}
