
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_prs_regs {int fmpr_pever; } ;


 int ioread32be (int *) ;

uint32_t fman_prs_get_expt_ev_mask(struct fman_prs_regs *regs)
{
 return ioread32be(&regs->fmpr_pever);
}
