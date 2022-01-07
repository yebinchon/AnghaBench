
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* key; void* data; } ;
typedef TYPE_1__ ckhc_t ;
struct TYPE_7__ {size_t count; } ;
typedef TYPE_2__ ckh_t ;


 scalar_t__ ckh_try_insert (TYPE_2__*,void const**,void const**) ;

__attribute__((used)) static bool
ckh_rebuild(ckh_t *ckh, ckhc_t *aTab) {
 size_t count, i, nins;
 const void *key, *data;

 count = ckh->count;
 ckh->count = 0;
 for (i = nins = 0; nins < count; i++) {
  if (aTab[i].key != ((void*)0)) {
   key = aTab[i].key;
   data = aTab[i].data;
   if (ckh_try_insert(ckh, &key, &data)) {
    ckh->count = count;
    return 1;
   }
   nins++;
  }
 }

 return 0;
}
