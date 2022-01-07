
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SUPER_MUX_STATE_BIT_FIQ ;
 int SUPER_MUX_STATE_BIT_IDLE ;
 int SUPER_MUX_STATE_BIT_IRQ ;
 int SUPER_MUX_STATE_BIT_MASK ;
 int SUPER_MUX_STATE_BIT_RUN ;
 int SUPER_MUX_STATE_BIT_SHIFT ;
 int SUPER_MUX_STATE_FIQ ;
 int SUPER_MUX_STATE_IDLE ;
 int SUPER_MUX_STATE_IRQ ;
 int SUPER_MUX_STATE_RUN ;
 int SUPER_MUX_STATE_STDBY ;

__attribute__((used)) static uint32_t
super_mux_get_state(uint32_t reg)
{
 reg = (reg >> SUPER_MUX_STATE_BIT_SHIFT) & SUPER_MUX_STATE_BIT_MASK;
 if (reg & SUPER_MUX_STATE_BIT_FIQ)
   return (SUPER_MUX_STATE_FIQ);
 if (reg & SUPER_MUX_STATE_BIT_IRQ)
   return (SUPER_MUX_STATE_IRQ);
 if (reg & SUPER_MUX_STATE_BIT_RUN)
   return (SUPER_MUX_STATE_RUN);
 if (reg & SUPER_MUX_STATE_BIT_IDLE)
   return (SUPER_MUX_STATE_IDLE);
 return (SUPER_MUX_STATE_STDBY);
}
