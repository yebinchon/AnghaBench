
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_prs_regs {int fmpr_ppsc; } ;


 int iowrite32be (int ,int *) ;

void fman_prs_set_stst_port_msk(struct fman_prs_regs *regs, uint32_t pid_msk)
{
 iowrite32be(pid_msk, &regs->fmpr_ppsc);
}
