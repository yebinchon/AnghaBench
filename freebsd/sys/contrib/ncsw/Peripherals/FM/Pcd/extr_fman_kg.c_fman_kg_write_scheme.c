
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_kg_scheme_regs {int * kgse_gec; int kgse_mv; int kgse_ccbs; int kgse_dv1; int kgse_dv0; int kgse_spc; int kgse_ppc; int kgse_hc; int kgse_fqb; int kgse_bmcl; int kgse_bmch; int kgse_ekdv; int kgse_ekfc; int kgse_mode; } ;
struct fman_kg_regs {int * fmkg_indirect; } ;


 int FM_KG_NUM_OF_GENERIC_REGS ;
 int TRUE ;
 int build_ar_scheme (int ,int ,int,int ) ;
 int fman_kg_write_ar_wait (struct fman_kg_regs*,int ) ;
 int iowrite32be (int ,int *) ;

int fman_kg_write_scheme(struct fman_kg_regs *regs,
    uint8_t scheme_id,
    uint8_t hwport_id,
    struct fman_kg_scheme_regs *scheme_regs,
    bool update_counter)
{
 struct fman_kg_scheme_regs *kgse_regs;
 uint32_t tmp_reg;
 int err, i;


 kgse_regs = (struct fman_kg_scheme_regs *)&(regs->fmkg_indirect[0]);

 iowrite32be(scheme_regs->kgse_mode, &kgse_regs->kgse_mode);
 iowrite32be(scheme_regs->kgse_ekfc, &kgse_regs->kgse_ekfc);
 iowrite32be(scheme_regs->kgse_ekdv, &kgse_regs->kgse_ekdv);
 iowrite32be(scheme_regs->kgse_bmch, &kgse_regs->kgse_bmch);
 iowrite32be(scheme_regs->kgse_bmcl, &kgse_regs->kgse_bmcl);
 iowrite32be(scheme_regs->kgse_fqb, &kgse_regs->kgse_fqb);
 iowrite32be(scheme_regs->kgse_hc, &kgse_regs->kgse_hc);
 iowrite32be(scheme_regs->kgse_ppc, &kgse_regs->kgse_ppc);
 iowrite32be(scheme_regs->kgse_spc, &kgse_regs->kgse_spc);
 iowrite32be(scheme_regs->kgse_dv0, &kgse_regs->kgse_dv0);
 iowrite32be(scheme_regs->kgse_dv1, &kgse_regs->kgse_dv1);
 iowrite32be(scheme_regs->kgse_ccbs, &kgse_regs->kgse_ccbs);
 iowrite32be(scheme_regs->kgse_mv, &kgse_regs->kgse_mv);

 for (i = 0 ; i < FM_KG_NUM_OF_GENERIC_REGS ; i++)
  iowrite32be(scheme_regs->kgse_gec[i], &kgse_regs->kgse_gec[i]);


 tmp_reg = build_ar_scheme(scheme_id, hwport_id, update_counter, TRUE);
 err = fman_kg_write_ar_wait(regs, tmp_reg);
 return err;
}
