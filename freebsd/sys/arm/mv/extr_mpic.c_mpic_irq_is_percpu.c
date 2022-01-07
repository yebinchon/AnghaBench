
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 uintptr_t MPIC_PPI ;
 int TRUE ;

__attribute__((used)) static boolean_t
mpic_irq_is_percpu(uintptr_t nb)
{
 if (nb < MPIC_PPI)
  return TRUE;

 return FALSE;
}
