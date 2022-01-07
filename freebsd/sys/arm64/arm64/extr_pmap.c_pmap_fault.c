
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int register_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int ATTR_AF ;
 int ATTR_AP (int ) ;
 int ATTR_AP_RO ;
 int ATTR_AP_RW_BIT ;
 int ATTR_SW_DBM ;
 int ESR_ELx_EXCEPTION (int) ;







 int ISS_DATA_DFSC_MASK ;







 int ISS_DATA_WnR ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PAR_SUCCESS (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int arm64_address_translate_s1e0r (int) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int kernel_pmap ;
 int pmap_clear_bits (int*,int) ;
 int pmap_invalidate_page (int ,int) ;
 int pmap_kextract (int) ;
 int pmap_load (int*) ;
 int* pmap_pte (int ,int,int*) ;
 int pmap_set_bits (int*,int ) ;

int
pmap_fault(pmap_t pmap, uint64_t esr, uint64_t far)
{
 pt_entry_t pte, *ptep;
 register_t intr;
 uint64_t ec, par;
 int lvl, rv;

 rv = KERN_FAILURE;

 ec = ESR_ELx_EXCEPTION(esr);
 switch (ec) {
 case 138:
 case 139:
 case 140:
 case 141:
  break;
 default:
  return (rv);
 }


 switch (esr & ISS_DATA_DFSC_MASK) {
 case 137:
 case 136:
 case 135:
  PMAP_LOCK(pmap);
  ptep = pmap_pte(pmap, far, &lvl);
  if (ptep != ((void*)0)) {
   pmap_set_bits(ptep, ATTR_AF);
   rv = KERN_SUCCESS;




  }
  PMAP_UNLOCK(pmap);
  break;
 case 134:
 case 133:
 case 132:
  if ((ec != 140 && ec != 141) ||
      (esr & ISS_DATA_WnR) == 0)
   return (rv);
  PMAP_LOCK(pmap);
  ptep = pmap_pte(pmap, far, &lvl);
  if (ptep != ((void*)0) &&
      ((pte = pmap_load(ptep)) & ATTR_SW_DBM) != 0) {
   if ((pte & ATTR_AP_RW_BIT) == ATTR_AP(ATTR_AP_RO)) {
    pmap_clear_bits(ptep, ATTR_AP_RW_BIT);
    pmap_invalidate_page(pmap, far);
   }
   rv = KERN_SUCCESS;
  }
  PMAP_UNLOCK(pmap);
  break;
 case 131:
 case 130:
 case 129:
 case 128:




  if (pmap == kernel_pmap) {





   if (pmap_kextract(far) != 0)
    rv = KERN_SUCCESS;
  } else {
   PMAP_LOCK(pmap);

   intr = intr_disable();
   par = arm64_address_translate_s1e0r(far);
   intr_restore(intr);
   PMAP_UNLOCK(pmap);





   if (PAR_SUCCESS(par))
    rv = KERN_SUCCESS;
  }
  break;
 }

 return (rv);
}
