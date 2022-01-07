
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPIC_INT_MSI ;
 int mpic_unmask_irq (int ) ;

__attribute__((used)) static void
mpic_unmask_msi(void)
{

 mpic_unmask_irq(MPIC_INT_MSI);
}
