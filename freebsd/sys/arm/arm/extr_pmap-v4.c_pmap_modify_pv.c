
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int u_int ;
struct TYPE_8__ {int pvh_attrs; } ;
struct vm_page {TYPE_1__ md; } ;
struct pv_entry {int pv_flags; } ;
typedef TYPE_3__* pmap_t ;
struct TYPE_9__ {int wired_count; } ;
struct TYPE_10__ {TYPE_2__ pm_stats; } ;


 int PMAP_ASSERT_LOCKED (TYPE_3__*) ;
 int PVF_MOD ;
 int PVF_REF ;
 int PVF_WIRED ;
 int PVF_WRITE ;
 int RA_WLOCKED ;
 struct pv_entry* pmap_find_pv (struct vm_page*,TYPE_3__*,int ) ;
 int pmap_fix_cache (struct vm_page*,TYPE_3__*,int ) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static u_int
pmap_modify_pv(struct vm_page *pg, pmap_t pm, vm_offset_t va,
    u_int clr_mask, u_int set_mask)
{
 struct pv_entry *npv;
 u_int flags, oflags;

 PMAP_ASSERT_LOCKED(pm);
 rw_assert(&pvh_global_lock, RA_WLOCKED);
 if ((npv = pmap_find_pv(pg, pm, va)) == ((void*)0))
  return (0);





 if (clr_mask & (PVF_REF | PVF_MOD))
  pg->md.pvh_attrs |= set_mask & (PVF_REF | PVF_MOD);

 oflags = npv->pv_flags;
 npv->pv_flags = flags = (oflags & ~clr_mask) | set_mask;

 if ((flags ^ oflags) & PVF_WIRED) {
  if (flags & PVF_WIRED)
   ++pm->pm_stats.wired_count;
  else
   --pm->pm_stats.wired_count;
 }

 if ((flags ^ oflags) & PVF_WRITE)
  pmap_fix_cache(pg, pm, 0);

 return (oflags);
}
