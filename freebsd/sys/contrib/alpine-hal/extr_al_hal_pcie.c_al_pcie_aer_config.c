
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_pcie_pf {int pf_num; int pcie_port; } ;
struct al_pcie_aer_params {int pf_num; int pcie_port; } ;


 int al_assert (struct al_pcie_pf*) ;
 int al_pcie_aer_config_aux (int ,int ,struct al_pcie_pf*) ;

int al_pcie_aer_config(
  struct al_pcie_pf *pcie_pf,
  struct al_pcie_aer_params *params)
{
 al_assert(pcie_pf);
 al_assert(params);

 return al_pcie_aer_config_aux(
   pcie_pf->pcie_port, pcie_pf->pf_num, params);
}
