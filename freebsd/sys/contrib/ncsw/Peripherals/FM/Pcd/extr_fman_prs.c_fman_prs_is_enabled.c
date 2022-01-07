
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_prs_regs {int fmpr_rpimac; } ;


 int FM_PCD_PRS_RPIMAC_EN ;
 int ioread32be (int *) ;

int fman_prs_is_enabled(struct fman_prs_regs *regs)
{
 return ioread32be(&regs->fmpr_rpimac) & FM_PCD_PRS_RPIMAC_EN;
}
