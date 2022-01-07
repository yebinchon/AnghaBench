
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_flags; } ;


 int PMAP_PDE_SUPERPAGE ;
 scalar_t__ pg_ps_enabled ;

bool
pmap_ps_enabled(pmap_t pmap)
{

 return (pg_ps_enabled && (pmap->pm_flags & PMAP_PDE_SUPERPAGE) != 0);
}
