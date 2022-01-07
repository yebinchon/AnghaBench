
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t lg_curbuckets; TYPE_1__* tab; } ;
typedef TYPE_2__ ckh_t ;
struct TYPE_4__ {scalar_t__ data; int * key; } ;


 size_t LG_CKH_BUCKET_CELLS ;
 size_t ZU (int) ;

bool
ckh_iter(ckh_t *ckh, size_t *tabind, void **key, void **data) {
 size_t i, ncells;

 for (i = *tabind, ncells = (ZU(1) << (ckh->lg_curbuckets +
     LG_CKH_BUCKET_CELLS)); i < ncells; i++) {
  if (ckh->tab[i].key != ((void*)0)) {
   if (key != ((void*)0)) {
    *key = (void *)ckh->tab[i].key;
   }
   if (data != ((void*)0)) {
    *data = (void *)ckh->tab[i].data;
   }
   *tabind = i + 1;
   return 0;
  }
 }

 return 1;
}
