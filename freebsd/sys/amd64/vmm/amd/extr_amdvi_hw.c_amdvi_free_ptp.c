
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ AMDVI_PD_SUPER (int) ;
 int AMDVI_PT_MASK ;
 int AMDVI_PT_PRESENT ;
 int M_AMDVI ;
 int NPTEPG ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int free (int*,int ) ;

__attribute__((used)) static void
amdvi_free_ptp(uint64_t *ptp, int level)
{
 int i;

 if (level < 1)
  return;

 for (i = 0; i < NPTEPG ; i++) {
  if ((ptp[i] & AMDVI_PT_PRESENT) == 0)
   continue;







  amdvi_free_ptp((uint64_t *)PHYS_TO_DMAP(ptp[i]
      & AMDVI_PT_MASK), level - 1);

 }

 free(ptp, M_AMDVI);
}
