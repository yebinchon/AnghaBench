
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qm_portal {int addr; } ;
typedef enum qm_isr_reg { ____Placeholder_qm_isr_reg } qm_isr_reg ;


 scalar_t__ REG_ISR ;
 int __qm_out (int *,scalar_t__,int ) ;

__attribute__((used)) static __inline__ void __qm_isr_write(struct qm_portal *portal, enum qm_isr_reg n, uint32_t val)
{
    __qm_out(&portal->addr, REG_ISR + (n << 2), val);
}
