
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_prs_regs {int fmpr_ppsc; } ;


 int FM_PCD_PRS_PPSC_ALL_PORTS ;
 int iowrite32be (int ,int *) ;

void fman_prs_set_stst(struct fman_prs_regs *regs, bool enable)
{
 if (enable)
  iowrite32be(FM_PCD_PRS_PPSC_ALL_PORTS, &regs->fmpr_ppsc);
 else
  iowrite32be(0, &regs->fmpr_ppsc);
}
