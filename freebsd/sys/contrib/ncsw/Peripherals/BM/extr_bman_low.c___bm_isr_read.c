
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bm_portal {int addr; } ;
typedef enum bm_isr_reg { ____Placeholder_bm_isr_reg } bm_isr_reg ;


 scalar_t__ REG_ISR ;
 int __bm_in (int *,scalar_t__) ;

uint32_t __bm_isr_read(struct bm_portal *portal, enum bm_isr_reg n)
{
    return __bm_in(&portal->addr, REG_ISR + (n << 2));
}
