
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_pcie_port {int dummy; } ;
typedef struct al_pcie_port al_pcie_aer_params ;


 int al_assert (struct al_pcie_port*) ;
 int al_pcie_aer_config_aux (struct al_pcie_port*,int ,struct al_pcie_port*) ;

int al_pcie_port_aer_config(
  struct al_pcie_port *pcie_port,
  struct al_pcie_aer_params *params)
{
 al_assert(pcie_port);
 al_assert(params);





 return al_pcie_aer_config_aux(pcie_port, 0, params);
}
