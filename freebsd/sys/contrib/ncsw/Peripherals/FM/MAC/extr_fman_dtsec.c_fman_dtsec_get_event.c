
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int ievent; } ;


 int ioread32be (int *) ;

uint32_t fman_dtsec_get_event(struct dtsec_regs *regs, uint32_t ev_mask)
{
 return ioread32be(&regs->ievent) & ev_mask;
}
