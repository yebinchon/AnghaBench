
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_prs_regs {int fmpr_pevr; } ;


 int iowrite32be (int ,int *) ;

void fman_prs_ack_expt_event(struct fman_prs_regs *regs, uint32_t event)
{
 iowrite32be(event, &regs->fmpr_pevr);
}
