
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int pml4_entry_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;


 int AMDID_PAGE1GB ;
 int DMPDPphys ;
 int DMPDphys ;
 int DMPML4I ;
 scalar_t__ KERNBASE ;
 int KERNend ;
 int KPDPI ;
 int KPDPphys ;
 int KPDphys ;
 int KPML4BASE ;
 int KPML4I ;
 int KPML4phys ;
 int KPTphys ;
 int Maxmem ;
 int NBPDP ;
 int NBPML4 ;
 int NDMPML4E ;
 int NKPDPE (int) ;
 int NKPML4E ;
 int NPDEPG ;
 int NPDPEPG ;
 scalar_t__ PDPSHIFT ;
 int PDRSHIFT ;
 int PG_PS ;
 size_t PML4PML4I ;
 int X86_PG_A ;
 int X86_PG_M ;
 int X86_PG_RW ;
 int X86_PG_V ;
 void* allocpages (scalar_t__*,int) ;
 int amd_feature ;
 int atop (int) ;
 int bootaddr_rwx (int) ;
 scalar_t__ brwsection ;
 scalar_t__ dmaplimit ;
 int howmany (int,int ) ;
 int ndmpdp ;
 int ndmpdpphys ;
 int nkpt ;
 int nkpt_init (scalar_t__) ;
 int pg_g ;
 int pg_nx ;
 int printf (char*,int) ;
 int ptoa (int) ;
 scalar_t__ round_2mpage (int) ;

__attribute__((used)) static void
create_pagetables(vm_paddr_t *firstaddr)
{
 int i, j, ndm1g, nkpdpe, nkdmpde;
 pd_entry_t *pd_p;
 pdp_entry_t *pdp_p;
 pml4_entry_t *p4_p;
 uint64_t DMPDkernphys;


 ndmpdp = howmany(ptoa(Maxmem), NBPDP);
 if (ndmpdp < 4)
  ndmpdp = 4;
 ndmpdpphys = howmany(ndmpdp, NPDPEPG);
 if (ndmpdpphys > NDMPML4E) {




  printf("NDMPML4E limits system to %d GB\n", NDMPML4E * 512);
  Maxmem = atop(NDMPML4E * NBPML4);
  ndmpdpphys = NDMPML4E;
  ndmpdp = NDMPML4E * NPDEPG;
 }
 DMPDPphys = allocpages(firstaddr, ndmpdpphys);
 ndm1g = 0;
 if ((amd_feature & AMDID_PAGE1GB) != 0) {




  ndm1g = ptoa(Maxmem) >> PDPSHIFT;





  nkdmpde = howmany((vm_offset_t)(brwsection - KERNBASE), NBPDP);
  DMPDkernphys = allocpages(firstaddr, nkdmpde);
 }
 if (ndm1g < ndmpdp)
  DMPDphys = allocpages(firstaddr, ndmpdp - ndm1g);
 dmaplimit = (vm_paddr_t)ndmpdp << PDPSHIFT;


 KPML4phys = allocpages(firstaddr, 1);
 KPDPphys = allocpages(firstaddr, NKPML4E);
 nkpt_init(*firstaddr);
 nkpdpe = NKPDPE(nkpt);

 KPTphys = allocpages(firstaddr, nkpt);
 KPDphys = allocpages(firstaddr, nkpdpe);






 pd_p = (pd_entry_t *)KPDphys;
 for (i = 0; i < nkpt; i++)
  pd_p[i] = (KPTphys + ptoa(i)) | X86_PG_RW | X86_PG_V;






 for (i = 0; (i << PDRSHIFT) < KERNend; i++)

  pd_p[i] = (i << PDRSHIFT) | X86_PG_V | PG_PS | pg_g |
      X86_PG_M | X86_PG_A | bootaddr_rwx(i << PDRSHIFT);






 if (*firstaddr < round_2mpage(KERNend))
  *firstaddr = round_2mpage(KERNend);


 pdp_p = (pdp_entry_t *)(KPDPphys + ptoa(KPML4I - KPML4BASE));
 for (i = 0; i < nkpdpe; i++)
  pdp_p[i + KPDPI] = (KPDphys + ptoa(i)) | X86_PG_RW | X86_PG_V;
 pd_p = (pd_entry_t *)DMPDphys;
 for (i = NPDEPG * ndm1g, j = 0; i < NPDEPG * ndmpdp; i++, j++) {
  pd_p[j] = (vm_paddr_t)i << PDRSHIFT;

  pd_p[j] |= X86_PG_RW | X86_PG_V | PG_PS | pg_g |
      X86_PG_M | X86_PG_A | pg_nx;
 }
 pdp_p = (pdp_entry_t *)DMPDPphys;
 for (i = 0; i < ndm1g; i++) {
  pdp_p[i] = (vm_paddr_t)i << PDPSHIFT;

  pdp_p[i] |= X86_PG_RW | X86_PG_V | PG_PS | pg_g |
      X86_PG_M | X86_PG_A | pg_nx;
 }
 for (j = 0; i < ndmpdp; i++, j++) {
  pdp_p[i] = DMPDphys + ptoa(j);
  pdp_p[i] |= X86_PG_RW | X86_PG_V | pg_nx;
 }






 if (ndm1g) {
  pd_p = (pd_entry_t *)DMPDkernphys;
  for (i = 0; i < (NPDEPG * nkdmpde); i++)
   pd_p[i] = (i << PDRSHIFT) | X86_PG_V | PG_PS | pg_g |
       X86_PG_M | X86_PG_A | pg_nx |
       bootaddr_rwx(i << PDRSHIFT);
  for (i = 0; i < nkdmpde; i++)
   pdp_p[i] = (DMPDkernphys + ptoa(i)) | X86_PG_RW |
       X86_PG_V | pg_nx;
 }


 p4_p = (pml4_entry_t *)KPML4phys;
 p4_p[PML4PML4I] = KPML4phys;
 p4_p[PML4PML4I] |= X86_PG_RW | X86_PG_V | pg_nx;


 for (i = 0; i < ndmpdpphys; i++) {
  p4_p[DMPML4I + i] = DMPDPphys + ptoa(i);
  p4_p[DMPML4I + i] |= X86_PG_RW | X86_PG_V | pg_nx;
 }


 for (i = 0; i < NKPML4E; i++) {
  p4_p[KPML4BASE + i] = KPDPphys + ptoa(i);
  p4_p[KPML4BASE + i] |= X86_PG_RW | X86_PG_V;
 }
}
