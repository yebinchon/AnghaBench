
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_regs {int ecntrl; } ;


 int DTSEC_ECNTRL_CLRCNT ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_dtsec_reset_stat(struct dtsec_regs *regs)
{

 iowrite32be(ioread32be(&regs->ecntrl) |
   DTSEC_ECNTRL_CLRCNT, &regs->ecntrl);
}
