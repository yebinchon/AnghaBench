
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_prs_regs {int fmpr_rpimac; } ;


 int FM_PCD_PRS_RPIMAC_EN ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_prs_disable(struct fman_prs_regs *regs)
{
 uint32_t tmp;

 tmp = ioread32be(&regs->fmpr_rpimac) & ~FM_PCD_PRS_RPIMAC_EN;
 iowrite32be(tmp, &regs->fmpr_rpimac);
}
