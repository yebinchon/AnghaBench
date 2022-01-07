
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ck_ht_map {int capacity; size_t mask; size_t probe_limit; int n_entries; struct ck_ht_entry* entries; } ;
struct ck_ht_hash {size_t value; } ;
struct ck_ht_entry {scalar_t__ key; size_t hash; } ;
struct ck_ht {int mode; int m; struct ck_ht_map* map; int seed; int (* h ) (struct ck_ht_hash*,scalar_t__*,int,int ) ;} ;
typedef int CK_HT_TYPE ;


 scalar_t__ CK_CC_LIKELY (int) ;
 size_t CK_HT_BUCKET_LENGTH ;
 scalar_t__ CK_HT_KEY_EMPTY ;
 scalar_t__ CK_HT_KEY_TOMBSTONE ;
 int CK_HT_MODE_BYTESTRING ;
 int CK_MD_CACHELINE ;
 void* ck_ht_entry_key (struct ck_ht_entry*) ;
 int ck_ht_entry_key_length (struct ck_ht_entry*) ;
 int ck_ht_map_bound_set (struct ck_ht_map*,struct ck_ht_hash,int) ;
 struct ck_ht_map* ck_ht_map_create (struct ck_ht*,int) ;
 int ck_ht_map_destroy (int ,struct ck_ht_map*,int) ;
 size_t ck_ht_map_probe_next (struct ck_ht_map*,size_t,struct ck_ht_hash,int) ;
 int ck_pr_fence_store () ;
 int ck_pr_store_ptr_unsafe (struct ck_ht_map**,struct ck_ht_map*) ;
 int stub1 (struct ck_ht_hash*,void*,int ,int ) ;
 int stub2 (struct ck_ht_hash*,scalar_t__*,int,int ) ;

bool
ck_ht_grow_spmc(struct ck_ht *table, CK_HT_TYPE capacity)
{
 struct ck_ht_map *map, *update;
 struct ck_ht_entry *bucket, *previous;
 struct ck_ht_hash h;
 size_t k, i, j, offset;
 CK_HT_TYPE probes;

restart:
 map = table->map;

 if (map->capacity >= capacity)
  return 0;

 update = ck_ht_map_create(table, capacity);
 if (update == ((void*)0))
  return 0;

 for (k = 0; k < map->capacity; k++) {
  previous = &map->entries[k];

  if (previous->key == CK_HT_KEY_EMPTY || previous->key == CK_HT_KEY_TOMBSTONE)
   continue;

  if (table->mode & CK_HT_MODE_BYTESTRING) {
   h.value = previous->hash;



  } else {

   h.value = previous->hash;



  }

  offset = h.value & update->mask;
  probes = 0;

  for (i = 0; i < update->probe_limit; i++) {
   bucket = (void *)((uintptr_t)(update->entries + offset) & ~(CK_MD_CACHELINE - 1));

   for (j = 0; j < CK_HT_BUCKET_LENGTH; j++) {
    struct ck_ht_entry *cursor = bucket + ((j + offset) & (CK_HT_BUCKET_LENGTH - 1));

    probes++;
    if (CK_CC_LIKELY(cursor->key == CK_HT_KEY_EMPTY)) {
     *cursor = *previous;
     update->n_entries++;
     ck_ht_map_bound_set(update, h, probes);
     break;
    }
   }

   if (j < CK_HT_BUCKET_LENGTH)
    break;

   offset = ck_ht_map_probe_next(update, offset, h, probes);
  }

  if (i == update->probe_limit) {




   ck_ht_map_destroy(table->m, update, 0);
   capacity <<= 1;
   goto restart;
  }
 }

 ck_pr_fence_store();
 ck_pr_store_ptr_unsafe(&table->map, update);
 ck_ht_map_destroy(table->m, map, 1);
 return 1;
}
