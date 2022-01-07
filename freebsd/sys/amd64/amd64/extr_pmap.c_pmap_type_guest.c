
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ pm_type; } ;


 scalar_t__ PT_EPT ;
 scalar_t__ PT_RVI ;

__attribute__((used)) static __inline boolean_t
pmap_type_guest(pmap_t pmap)
{

 return ((pmap->pm_type == PT_EPT) || (pmap->pm_type == PT_RVI));
}
