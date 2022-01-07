
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dtsec_regs {int maxfrm; } ;


 int ioread32be (int *) ;

uint16_t fman_dtsec_get_max_frame_len(struct dtsec_regs *regs)
{
 return (uint16_t)ioread32be(&regs->maxfrm);
}
