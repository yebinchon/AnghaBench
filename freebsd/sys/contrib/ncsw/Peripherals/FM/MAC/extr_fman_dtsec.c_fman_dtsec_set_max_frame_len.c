
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dtsec_regs {int maxfrm; } ;


 int iowrite32be (int ,int *) ;

void fman_dtsec_set_max_frame_len(struct dtsec_regs *regs, uint16_t length)
{
 iowrite32be(length, &regs->maxfrm);
}
