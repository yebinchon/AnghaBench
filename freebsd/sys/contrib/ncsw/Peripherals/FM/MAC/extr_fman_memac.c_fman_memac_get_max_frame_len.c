
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct memac_regs {int maxfrm; } ;


 int ioread32be (int *) ;

uint16_t fman_memac_get_max_frame_len(struct memac_regs *regs)
{
    uint32_t tmp;

    tmp = ioread32be(&regs->maxfrm);

    return(uint16_t)tmp;
}
