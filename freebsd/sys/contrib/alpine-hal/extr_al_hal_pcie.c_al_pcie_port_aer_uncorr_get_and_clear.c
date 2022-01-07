
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_pcie_port {int dummy; } ;


 int al_assert (struct al_pcie_port*) ;
 unsigned int al_pcie_aer_uncorr_get_and_clear_aux (struct al_pcie_port*,int ) ;

unsigned int al_pcie_port_aer_uncorr_get_and_clear(
  struct al_pcie_port *pcie_port)
{
 al_assert(pcie_port);





 return al_pcie_aer_uncorr_get_and_clear_aux(pcie_port, 0);
}
