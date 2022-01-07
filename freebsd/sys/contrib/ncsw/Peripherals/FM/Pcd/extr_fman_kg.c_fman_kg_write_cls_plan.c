
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct fman_kg_regs {int * fmkg_indirect; } ;
struct fman_kg_cp_regs {int * kgcpe; } ;


 int EINVAL ;
 scalar_t__ FM_KG_CLS_PLAN_GRPS_NUM ;
 int FM_KG_NUM_CLS_PLAN_ENTR ;
 int TRUE ;
 int build_ar_cls_plan (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int fman_kg_write_ar_wait (struct fman_kg_regs*,int ) ;
 int iowrite32be (int ,int *) ;

int fman_kg_write_cls_plan(struct fman_kg_regs *regs,
    uint8_t grp_id,
    uint8_t entries_mask,
    uint8_t hwport_id,
    struct fman_kg_cp_regs *cls_plan_regs)
{
 struct fman_kg_cp_regs *kgcpe_regs;
 uint32_t tmp_reg;
 int i, err;


 if (grp_id >= FM_KG_CLS_PLAN_GRPS_NUM)
  return -EINVAL;


 kgcpe_regs = (struct fman_kg_cp_regs *)&(regs->fmkg_indirect[0]);

 for (i = 0; i < FM_KG_NUM_CLS_PLAN_ENTR; i++) {
  iowrite32be(cls_plan_regs->kgcpe[i], &kgcpe_regs->kgcpe[i]);
 }

 tmp_reg = build_ar_cls_plan(grp_id, entries_mask, hwport_id, TRUE);
 err = fman_kg_write_ar_wait(regs, tmp_reg);
 return err;
}
