
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_pcie_pf {int pf_num; int pcie_port; } ;


 int al_assert (struct al_pcie_pf*) ;
 unsigned int al_pcie_aer_uncorr_get_and_clear_aux (int ,int ) ;

unsigned int al_pcie_aer_uncorr_get_and_clear(struct al_pcie_pf *pcie_pf)
{
 al_assert(pcie_pf);

 return al_pcie_aer_uncorr_get_and_clear_aux(
   pcie_pf->pcie_port, pcie_pf->pf_num);
}
