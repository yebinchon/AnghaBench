
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_kg_regs {int * fmkg_indirect; } ;
struct fman_kg_pe_regs {int fmkg_pe_sp; } ;


 int TRUE ;
 int build_ar_bind_scheme (int ,int ) ;
 int fman_kg_write_ar_wait (struct fman_kg_regs*,int ) ;
 int iowrite32be (int ,int *) ;

int fman_kg_write_bind_schemes(struct fman_kg_regs *regs,
    uint8_t hwport_id,
    uint32_t schemes)
{
 struct fman_kg_pe_regs *kg_pe_regs;
 uint32_t tmp_reg;
 int err;

 kg_pe_regs = (struct fman_kg_pe_regs *)&(regs->fmkg_indirect[0]);

 iowrite32be(schemes, &kg_pe_regs->fmkg_pe_sp);

 tmp_reg = build_ar_bind_scheme(hwport_id, TRUE);
 err = fman_kg_write_ar_wait(regs, tmp_reg);
 return err;
}
