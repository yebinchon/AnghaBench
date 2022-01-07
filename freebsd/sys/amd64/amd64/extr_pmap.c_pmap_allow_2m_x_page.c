
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {scalar_t__ pm_type; } ;


 scalar_t__ PT_EPT ;
 int pmap_allow_2m_x_ept ;

__attribute__((used)) static bool
pmap_allow_2m_x_page(pmap_t pmap, bool executable)
{

 return (pmap->pm_type != PT_EPT || !executable ||
     !pmap_allow_2m_x_ept);
}
