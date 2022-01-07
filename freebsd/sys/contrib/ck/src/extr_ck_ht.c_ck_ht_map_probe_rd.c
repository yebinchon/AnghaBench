
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct ck_ht_map {size_t mask; size_t probe_limit; int mode; int deletions; scalar_t__ entries; } ;
struct ck_ht_entry {int value; int hash; int key_length; int key; } ;
struct TYPE_9__ {size_t value; } ;
typedef TYPE_1__ ck_ht_hash_t ;
struct TYPE_10__ {uintptr_t key; uintptr_t value; int hash; void* key_length; } ;
typedef TYPE_2__ ck_ht_entry_t ;
typedef scalar_t__ CK_HT_TYPE ;


 size_t CK_HT_BUCKET_LENGTH ;
 uintptr_t CK_HT_KEY_EMPTY ;
 int CK_HT_KEY_MASK ;
 uintptr_t CK_HT_KEY_TOMBSTONE ;
 int CK_HT_MODE_BYTESTRING ;
 void* CK_HT_TYPE_LOAD (int *) ;
 int CK_MD_CACHELINE ;
 int CK_MD_VMA_BITS ;
 void* ck_ht_entry_key (TYPE_2__*) ;
 int ck_ht_entry_key_length (TYPE_2__*) ;
 scalar_t__ ck_ht_map_bound_get (struct ck_ht_map*,TYPE_1__) ;
 size_t ck_ht_map_probe_next (struct ck_ht_map*,size_t,TYPE_1__,scalar_t__) ;
 int ck_pr_fence_load () ;
 scalar_t__ ck_pr_load_ptr (int *) ;
 scalar_t__ memcmp (void*,void const*,int ) ;

__attribute__((used)) static struct ck_ht_entry *
ck_ht_map_probe_rd(struct ck_ht_map *map,
    ck_ht_hash_t h,
    ck_ht_entry_t *snapshot,
    const void *key,
    uint16_t key_length)
{
 struct ck_ht_entry *bucket, *cursor;
 size_t offset, i, j;
 CK_HT_TYPE probes = 0;
 CK_HT_TYPE probe_maximum;


 CK_HT_TYPE d = 0;
 CK_HT_TYPE d_prime = 0;
retry:


 probe_maximum = ck_ht_map_bound_get(map, h);
 offset = h.value & map->mask;

 for (i = 0; i < map->probe_limit; i++) {





  bucket = (void *)((uintptr_t)(map->entries + offset) &
        ~(CK_MD_CACHELINE - 1));

  for (j = 0; j < CK_HT_BUCKET_LENGTH; j++) {
   uint16_t k;

   if (probes++ > probe_maximum)
    return ((void*)0);

   cursor = bucket + ((j + offset) & (CK_HT_BUCKET_LENGTH - 1));






   d = CK_HT_TYPE_LOAD(&map->deletions);
   snapshot->key = (uintptr_t)ck_pr_load_ptr(&cursor->key);
   ck_pr_fence_load();
   snapshot->key_length = CK_HT_TYPE_LOAD(&cursor->key_length);
   snapshot->hash = CK_HT_TYPE_LOAD(&cursor->hash);
   snapshot->value = (uintptr_t)ck_pr_load_ptr(&cursor->value);







   if (snapshot->key == CK_HT_KEY_TOMBSTONE)
    continue;

   if (snapshot->key == CK_HT_KEY_EMPTY)
    goto leave;

   if (snapshot->key == (uintptr_t)key)
    goto leave;

   if (map->mode & CK_HT_MODE_BYTESTRING) {
    void *pointer;





    k = ck_ht_entry_key_length(snapshot);
    if (k != key_length)
     continue;




    if (snapshot->hash != h.value)
     continue;

    d_prime = CK_HT_TYPE_LOAD(&map->deletions);





    if (d != d_prime)
     goto retry;


    pointer = ck_ht_entry_key(snapshot);
    if (memcmp(pointer, key, key_length) == 0)
     goto leave;
   }
  }

  offset = ck_ht_map_probe_next(map, offset, h, probes);
 }

 return ((void*)0);

leave:
 return cursor;
}
