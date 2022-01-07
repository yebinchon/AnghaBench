
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ttb_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_pt1; } ;


 int ttb_flags ;
 int vtophys (int ) ;

__attribute__((used)) static __inline ttb_entry_t
pmap_ttb_get(pmap_t pmap)
{

 return (vtophys(pmap->pm_pt1) | ttb_flags);
}
