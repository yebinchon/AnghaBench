
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef scalar_t__ u_int32_t ;
struct bios_smap {int type; int length; int base; } ;


 int RB_VERBOSE ;
 scalar_t__ SMAP_TYPE_MEMORY ;
 int add_physmap_entry (int ,int ,int *,int*) ;
 int boothowto ;
 int printf (char*,int,int ,int ) ;

void
bios_add_smap_entries(struct bios_smap *smapbase, u_int32_t smapsize,
                      vm_paddr_t *physmap, int *physmap_idx)
{
 struct bios_smap *smap, *smapend;

 smapend = (struct bios_smap *)((uintptr_t)smapbase + smapsize);

 for (smap = smapbase; smap < smapend; smap++) {
  if (boothowto & RB_VERBOSE)
   printf("SMAP type=%02x base=%016lx len=%016lx\n",
       smap->type, smap->base, smap->length);

  if (smap->type != SMAP_TYPE_MEMORY)
   continue;

  if (!add_physmap_entry(smap->base, smap->length, physmap,
      physmap_idx))
   break;
 }
}
