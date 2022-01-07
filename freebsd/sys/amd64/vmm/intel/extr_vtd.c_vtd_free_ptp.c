
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int M_VTD ;
 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int VTD_PTE_ADDR_M ;
 int VTD_PTE_RD ;
 int VTD_PTE_SUPERPAGE ;
 int VTD_PTE_WR ;
 int bzero (int*,int ) ;
 int free (int*,int ) ;

__attribute__((used)) static void
vtd_free_ptp(uint64_t *ptp, int level)
{
 int i;
 uint64_t *nlp;

 if (level > 1) {
  for (i = 0; i < 512; i++) {
   if ((ptp[i] & (VTD_PTE_RD | VTD_PTE_WR)) == 0)
    continue;
   if ((ptp[i] & VTD_PTE_SUPERPAGE) != 0)
    continue;
   nlp = (uint64_t *)PHYS_TO_DMAP(ptp[i] & VTD_PTE_ADDR_M);
   vtd_free_ptp(nlp, level - 1);
  }
 }

 bzero(ptp, PAGE_SIZE);
 free(ptp, M_VTD);
}
