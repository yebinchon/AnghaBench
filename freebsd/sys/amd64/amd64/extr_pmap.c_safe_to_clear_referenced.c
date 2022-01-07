
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ pm_type; int pm_flags; } ;


 int EPT_PG_EXECUTE ;
 int EPT_PG_WRITE ;
 int FALSE ;
 int KASSERT (int,char*) ;
 int PMAP_SUPPORTS_EXEC_ONLY ;
 scalar_t__ PT_EPT ;
 int TRUE ;
 int pmap_emulate_ad_bits (TYPE_1__*) ;

__attribute__((used)) static __inline boolean_t
safe_to_clear_referenced(pmap_t pmap, pt_entry_t pte)
{

 if (!pmap_emulate_ad_bits(pmap))
  return (TRUE);

 KASSERT(pmap->pm_type == PT_EPT, ("invalid pm_type %d", pmap->pm_type));






 if ((pte & EPT_PG_WRITE) != 0)
  return (FALSE);




 if ((pte & EPT_PG_EXECUTE) == 0 ||
     ((pmap->pm_flags & PMAP_SUPPORTS_EXEC_ONLY) != 0))
  return (TRUE);
 else
  return (FALSE);
}
