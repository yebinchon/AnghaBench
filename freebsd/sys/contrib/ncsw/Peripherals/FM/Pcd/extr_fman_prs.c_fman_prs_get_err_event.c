
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_prs_regs {int fmpr_perr; } ;


 int ioread32be (int *) ;

uint32_t fman_prs_get_err_event(struct fman_prs_regs *regs, uint32_t ev_mask)
{
 return ioread32be(&regs->fmpr_perr) & ev_mask;
}
