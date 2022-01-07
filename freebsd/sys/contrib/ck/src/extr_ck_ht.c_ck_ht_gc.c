
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ck_ht_map {scalar_t__ n_entries; unsigned long probe_maximum; unsigned long* probe_bound; int capacity; unsigned long mask; unsigned long deletions; struct ck_ht_entry* entries; } ;
struct ck_ht_hash {unsigned long value; } ;
struct ck_ht_entry {scalar_t__ key; unsigned long hash; unsigned long key_length; scalar_t__ value; } ;
struct ck_ht {int mode; TYPE_1__* m; int seed; int (* h ) (struct ck_ht_hash*,scalar_t__*,int,int ) ;struct ck_ht_map* map; } ;
struct TYPE_2__ {unsigned long* (* malloc ) (unsigned long) ;int (* free ) (unsigned long*,unsigned long,int) ;} ;
typedef unsigned long CK_HT_WORD ;
typedef unsigned long CK_HT_TYPE ;


 scalar_t__ CK_HT_KEY_EMPTY ;
 scalar_t__ CK_HT_KEY_TOMBSTONE ;
 int CK_HT_MODE_BYTESTRING ;
 int CK_HT_STORE (unsigned long*,unsigned long) ;
 int CK_HT_TYPE_STORE (unsigned long*,unsigned long) ;
 unsigned long CK_HT_WORD_MAX ;
 void* ck_ht_entry_key (struct ck_ht_entry*) ;
 int ck_ht_entry_key_length (struct ck_ht_entry*) ;
 struct ck_ht_entry* ck_ht_map_probe_wr (struct ck_ht_map*,struct ck_ht_hash,struct ck_ht_entry*,struct ck_ht_entry**,void*,int,int *,unsigned long*) ;
 int ck_pr_fence_store () ;
 int ck_pr_store_ptr_unsafe (scalar_t__*,void*) ;
 int memset (unsigned long*,int ,unsigned long) ;
 unsigned long* stub1 (unsigned long) ;
 int stub2 (struct ck_ht_hash*,void*,int,int ) ;
 int stub3 (struct ck_ht_hash*,scalar_t__*,int,int ) ;
 int stub4 (unsigned long*,unsigned long,int) ;

bool
ck_ht_gc(struct ck_ht *ht, unsigned long cycles, unsigned long seed)
{
 CK_HT_WORD *bounds = ((void*)0);
 struct ck_ht_map *map = ht->map;
 CK_HT_TYPE maximum, i;
 CK_HT_TYPE size = 0;

 if (map->n_entries == 0) {
  CK_HT_TYPE_STORE(&map->probe_maximum, 0);
  if (map->probe_bound != ((void*)0))
   memset(map->probe_bound, 0, sizeof(CK_HT_WORD) * map->capacity);

  return 1;
 }

 if (cycles == 0) {
  maximum = 0;

  if (map->probe_bound != ((void*)0)) {
   size = sizeof(CK_HT_WORD) * map->capacity;
   bounds = ht->m->malloc(size);
   if (bounds == ((void*)0))
    return 0;

   memset(bounds, 0, size);
  }
 } else {
  maximum = map->probe_maximum;
 }

 for (i = 0; i < map->capacity; i++) {
  struct ck_ht_entry *entry, *priority, snapshot;
  struct ck_ht_hash h;
  CK_HT_TYPE probes_wr;
  CK_HT_TYPE offset;

  entry = &map->entries[(i + seed) & map->mask];
  if (entry->key == CK_HT_KEY_EMPTY ||
      entry->key == CK_HT_KEY_TOMBSTONE) {
   continue;
  }

  if (ht->mode & CK_HT_MODE_BYTESTRING) {

   h.value = entry->hash;




   entry = ck_ht_map_probe_wr(map, h, &snapshot, &priority,
       ck_ht_entry_key(entry),
       ck_ht_entry_key_length(entry),
       ((void*)0), &probes_wr);
  } else {

   h.value = entry->hash;



   entry = ck_ht_map_probe_wr(map, h, &snapshot, &priority,
       (void *)entry->key,
       sizeof(entry->key),
       ((void*)0), &probes_wr);
  }

  offset = h.value & map->mask;

  if (priority != ((void*)0)) {
   CK_HT_TYPE_STORE(&map->deletions, map->deletions + 1);
   ck_pr_fence_store();

   CK_HT_TYPE_STORE(&priority->key_length, entry->key_length);
   CK_HT_TYPE_STORE(&priority->hash, entry->hash);

   ck_pr_store_ptr_unsafe(&priority->value, (void *)entry->value);
   ck_pr_fence_store();
   ck_pr_store_ptr_unsafe(&priority->key, (void *)entry->key);
   ck_pr_fence_store();
   CK_HT_TYPE_STORE(&map->deletions, map->deletions + 1);
   ck_pr_fence_store();
   ck_pr_store_ptr_unsafe(&entry->key, (void *)CK_HT_KEY_TOMBSTONE);
   ck_pr_fence_store();
  }

  if (cycles == 0) {
   if (probes_wr > maximum)
    maximum = probes_wr;

   if (probes_wr >= CK_HT_WORD_MAX)
    probes_wr = CK_HT_WORD_MAX;

   if (bounds != ((void*)0) && probes_wr > bounds[offset])
    bounds[offset] = probes_wr;
  } else if (--cycles == 0)
   break;
 }

 if (maximum != map->probe_maximum)
  CK_HT_TYPE_STORE(&map->probe_maximum, maximum);

 if (bounds != ((void*)0)) {
  for (i = 0; i < map->capacity; i++)
   CK_HT_STORE(&map->probe_bound[i], bounds[i]);

  ht->m->free(bounds, size, 0);
 }

 return 1;
}
