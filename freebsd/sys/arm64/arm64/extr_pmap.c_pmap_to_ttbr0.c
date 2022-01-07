
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_l0_paddr; int pm_cookie; } ;


 int ASID_TO_OPERAND (int ) ;
 int COOKIE_TO_ASID (int ) ;

uint64_t
pmap_to_ttbr0(pmap_t pmap)
{

 return (ASID_TO_OPERAND(COOKIE_TO_ASID(pmap->pm_cookie)) |
     pmap->pm_l0_paddr);
}
