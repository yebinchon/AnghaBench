
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_type; } ;





 int panic (char*,int) ;
 int pg_g ;

__attribute__((used)) static __inline pt_entry_t
pmap_global_bit(pmap_t pmap)
{
 pt_entry_t mask;

 switch (pmap->pm_type) {
 case 128:
  mask = pg_g;
  break;
 case 129:
 case 130:
  mask = 0;
  break;
 default:
  panic("pmap_global_bit: invalid pm_type %d", pmap->pm_type);
 }

 return (mask);
}
