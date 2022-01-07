
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct tgec_regs {int pause_quant; } ;


 int iowrite32be (int ,int *) ;

void fman_tgec_set_tx_pause_frames(struct tgec_regs *regs, uint16_t pause_time)
{
 iowrite32be((uint32_t)pause_time, &regs->pause_quant);
}
