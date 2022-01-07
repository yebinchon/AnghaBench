
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void const* data; int * key; } ;
typedef TYPE_1__ ckhc_t ;
struct TYPE_5__ {int count; TYPE_1__* tab; int prng_state; } ;
typedef TYPE_2__ ckh_t ;


 unsigned int LG_CKH_BUCKET_CELLS ;
 unsigned int ZU (int) ;
 scalar_t__ prng_lg_range_u64 (int *,unsigned int) ;

__attribute__((used)) static bool
ckh_try_bucket_insert(ckh_t *ckh, size_t bucket, const void *key,
    const void *data) {
 ckhc_t *cell;
 unsigned offset, i;





 offset = (unsigned)prng_lg_range_u64(&ckh->prng_state,
     LG_CKH_BUCKET_CELLS);
 for (i = 0; i < (ZU(1) << LG_CKH_BUCKET_CELLS); i++) {
  cell = &ckh->tab[(bucket << LG_CKH_BUCKET_CELLS) +
      ((i + offset) & ((ZU(1) << LG_CKH_BUCKET_CELLS) - 1))];
  if (cell->key == ((void*)0)) {
   cell->key = key;
   cell->data = data;
   ckh->count++;
   return 0;
  }
 }

 return 1;
}
