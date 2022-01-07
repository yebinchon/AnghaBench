
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_7__ {int * slabcur; } ;
typedef TYPE_1__ bin_t ;
struct TYPE_8__ {int nregs; } ;
typedef TYPE_2__ bin_info_t ;
typedef int arena_t ;


 int arena_bin_slabs_full_remove (int *,TYPE_1__*,int *) ;
 int arena_bin_slabs_nonfull_remove (TYPE_1__*,int *) ;
 TYPE_2__* bin_infos ;
 size_t extent_szind_get (int *) ;

__attribute__((used)) static void
arena_dissociate_bin_slab(arena_t *arena, extent_t *slab, bin_t *bin) {

 if (slab == bin->slabcur) {
  bin->slabcur = ((void*)0);
 } else {
  szind_t binind = extent_szind_get(slab);
  const bin_info_t *bin_info = &bin_infos[binind];






  if (bin_info->nregs == 1) {
   arena_bin_slabs_full_remove(arena, bin, slab);
  } else {
   arena_bin_slabs_nonfull_remove(bin, slab);
  }
 }
}
