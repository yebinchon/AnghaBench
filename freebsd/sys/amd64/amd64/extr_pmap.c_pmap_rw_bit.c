
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_type; } ;


 int EPT_PG_EMUL_RW ;
 int EPT_PG_WRITE ;



 int X86_PG_RW ;
 int panic (char*,int) ;
 int pmap_emulate_ad_bits (TYPE_1__*) ;

__attribute__((used)) static __inline pt_entry_t
pmap_rw_bit(pmap_t pmap)
{
 pt_entry_t mask;

 switch (pmap->pm_type) {
 case 128:
 case 129:
  mask = X86_PG_RW;
  break;
 case 130:
  if (pmap_emulate_ad_bits(pmap))
   mask = EPT_PG_EMUL_RW;
  else
   mask = EPT_PG_WRITE;
  break;
 default:
  panic("pmap_rw_bit: invalid pm_type %d", pmap->pm_type);
 }

 return (mask);
}
