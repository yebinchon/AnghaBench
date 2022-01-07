
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt_entry_t ;


 int ATTR_AP (int ) ;
 int ATTR_AP_RW ;
 int ATTR_AP_RW_BIT ;
 int ATTR_SW_DBM ;
 int ATTR_SW_MANAGED ;
 int KASSERT (int,char*) ;

__attribute__((used)) static inline int
pmap_pte_dirty(pt_entry_t pte)
{

 KASSERT((pte & ATTR_SW_MANAGED) != 0, ("pte %#lx is unmanaged", pte));
 KASSERT((pte & (ATTR_AP_RW_BIT | ATTR_SW_DBM)) != 0,
     ("pte %#lx is writeable and missing ATTR_SW_DBM", pte));

 return ((pte & (ATTR_AP_RW_BIT | ATTR_SW_DBM)) ==
     (ATTR_AP(ATTR_AP_RW) | ATTR_SW_DBM));
}
