
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int boolean_t ;
struct TYPE_3__ {int pm_flags; } ;


 int PMAP_EMULATE_AD_BITS ;

__attribute__((used)) static __inline boolean_t
pmap_emulate_ad_bits(pmap_t pmap)
{

 return ((pmap->pm_flags & PMAP_EMULATE_AD_BITS) != 0);
}
