
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_5__ {scalar_t__ nregs; int bitmap_info; } ;
typedef TYPE_1__ bin_info_t ;
struct TYPE_6__ {int bitmap; } ;
typedef TYPE_2__ arena_slab_data_t ;


 size_t arena_slab_regind (int *,size_t,void*) ;
 int assert (int) ;
 TYPE_1__* bin_infos ;
 int bitmap_get (int ,int *,size_t) ;
 int bitmap_unset (int ,int *,size_t) ;
 scalar_t__ extent_nfree_get (int *) ;
 int extent_nfree_inc (int *) ;
 size_t extent_szind_get (int *) ;

__attribute__((used)) static void
arena_slab_reg_dalloc(extent_t *slab, arena_slab_data_t *slab_data, void *ptr) {
 szind_t binind = extent_szind_get(slab);
 const bin_info_t *bin_info = &bin_infos[binind];
 size_t regind = arena_slab_regind(slab, binind, ptr);

 assert(extent_nfree_get(slab) < bin_info->nregs);

 assert(bitmap_get(slab_data->bitmap, &bin_info->bitmap_info, regind));

 bitmap_unset(slab_data->bitmap, &bin_info->bitmap_info, regind);
 extent_nfree_inc(slab);
}
