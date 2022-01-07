
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qm_portal {int addr; } ;
typedef enum qm_isr_reg { ____Placeholder_qm_isr_reg } qm_isr_reg ;


 scalar_t__ REG_ISR ;
 int __qm_in (int *,scalar_t__) ;

__attribute__((used)) static __inline__ uint32_t __qm_isr_read(struct qm_portal *portal, enum qm_isr_reg n)
{
    return __qm_in(&portal->addr, REG_ISR + (n << 2));
}
