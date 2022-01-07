
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt2_entry_t ;


 int NPTE2_IN_PT2 ;
 int pte2_clear (int *) ;

__attribute__((used)) static __inline void
pmap_clear_pt2(pt2_entry_t *fpte2p)
{
 pt2_entry_t *pte2p;

 for (pte2p = fpte2p; pte2p < fpte2p + NPTE2_IN_PT2; pte2p++)
  pte2_clear(pte2p);

}
