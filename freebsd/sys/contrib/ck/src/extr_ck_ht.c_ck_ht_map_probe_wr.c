
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct ck_ht_map {size_t mask; size_t probe_limit; int mode; scalar_t__ entries; } ;
struct ck_ht_entry {uintptr_t key; int value; int hash; } ;
struct TYPE_5__ {size_t value; } ;
typedef TYPE_1__ ck_ht_hash_t ;
typedef struct ck_ht_entry ck_ht_entry_t ;
typedef scalar_t__ CK_HT_TYPE ;


 size_t CK_HT_BUCKET_LENGTH ;
 uintptr_t CK_HT_KEY_EMPTY ;
 int CK_HT_KEY_MASK ;
 uintptr_t CK_HT_KEY_TOMBSTONE ;
 int CK_HT_MODE_BYTESTRING ;
 scalar_t__ CK_HT_TYPE_MAX ;
 int CK_MD_CACHELINE ;
 int CK_MD_VMA_BITS ;
 void* ck_ht_entry_key (struct ck_ht_entry*) ;
 int ck_ht_entry_key_length (struct ck_ht_entry*) ;
 scalar_t__ ck_ht_map_bound_get (struct ck_ht_map*,TYPE_1__) ;
 size_t ck_ht_map_probe_next (struct ck_ht_map*,size_t,TYPE_1__,scalar_t__) ;
 scalar_t__ memcmp (void*,void const*,int ) ;

__attribute__((used)) static struct ck_ht_entry *
ck_ht_map_probe_wr(struct ck_ht_map *map,
    ck_ht_hash_t h,
    ck_ht_entry_t *snapshot,
    ck_ht_entry_t **available,
    const void *key,
    uint16_t key_length,
    CK_HT_TYPE *probe_limit,
    CK_HT_TYPE *probe_wr)
{
 struct ck_ht_entry *bucket, *cursor;
 struct ck_ht_entry *first = ((void*)0);
 size_t offset, i, j;
 CK_HT_TYPE probes = 0;
 CK_HT_TYPE limit;

 if (probe_limit == ((void*)0)) {
  limit = ck_ht_map_bound_get(map, h);
 } else {
  limit = CK_HT_TYPE_MAX;
 }

 offset = h.value & map->mask;
 for (i = 0; i < map->probe_limit; i++) {





  bucket = (void *)((uintptr_t)(map->entries + offset) &
        ~(CK_MD_CACHELINE - 1));

  for (j = 0; j < CK_HT_BUCKET_LENGTH; j++) {
   uint16_t k;

   if (probes++ > limit)
    break;

   cursor = bucket + ((j + offset) & (CK_HT_BUCKET_LENGTH - 1));






   if (cursor->key == CK_HT_KEY_TOMBSTONE) {
    if (first == ((void*)0)) {
     first = cursor;
     *probe_wr = probes;
    }

    continue;
   }

   if (cursor->key == CK_HT_KEY_EMPTY)
    goto leave;

   if (cursor->key == (uintptr_t)key)
    goto leave;

   if (map->mode & CK_HT_MODE_BYTESTRING) {
    void *pointer;





    k = ck_ht_entry_key_length(cursor);
    if (k != key_length)
     continue;





    if (cursor->hash != h.value)
     continue;


    pointer = ck_ht_entry_key(cursor);
    if (memcmp(pointer, key, key_length) == 0)
     goto leave;
   }
  }

  offset = ck_ht_map_probe_next(map, offset, h, probes);
 }

 cursor = ((void*)0);

leave:
 if (probe_limit != ((void*)0)) {
  *probe_limit = probes;
 } else if (first == ((void*)0)) {
  *probe_wr = probes;
 }

 *available = first;

 if (cursor != ((void*)0)) {
  *snapshot = *cursor;
 }

 return cursor;
}
