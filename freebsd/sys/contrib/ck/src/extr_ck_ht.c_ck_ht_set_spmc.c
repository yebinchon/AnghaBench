
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {int capacity; int deletions; int n_entries; } ;
struct ck_ht_entry {scalar_t__ key; int key_length; int hash; scalar_t__ value; } ;
struct ck_ht {int mode; struct ck_ht_map* map; } ;
typedef int ck_ht_hash_t ;
typedef struct ck_ht_entry ck_ht_entry_t ;
typedef int CK_HT_TYPE ;


 scalar_t__ CK_HT_KEY_EMPTY ;
 scalar_t__ CK_HT_KEY_TOMBSTONE ;
 int CK_HT_MODE_BYTESTRING ;
 int CK_HT_TYPE_STORE (int*,int) ;
 void* ck_ht_entry_key (struct ck_ht_entry*) ;
 int ck_ht_entry_key_length (struct ck_ht_entry*) ;
 int ck_ht_grow_spmc (struct ck_ht*,int) ;
 int ck_ht_map_bound_set (struct ck_ht_map*,int ,int ) ;
 struct ck_ht_entry* ck_ht_map_probe_wr (struct ck_ht_map*,int ,struct ck_ht_entry*,struct ck_ht_entry**,void*,int,int *,int *) ;
 int ck_pr_fence_store () ;
 int ck_pr_store_ptr_unsafe (scalar_t__*,void*) ;

bool
ck_ht_set_spmc(struct ck_ht *table,
    ck_ht_hash_t h,
    ck_ht_entry_t *entry)
{
 struct ck_ht_entry snapshot, *candidate, *priority;
 struct ck_ht_map *map;
 CK_HT_TYPE probes, probes_wr;
 bool empty = 0;

 for (;;) {
  map = table->map;

  if (table->mode & CK_HT_MODE_BYTESTRING) {
   candidate = ck_ht_map_probe_wr(map, h, &snapshot, &priority,
       ck_ht_entry_key(entry),
       ck_ht_entry_key_length(entry),
       &probes, &probes_wr);
  } else {
   candidate = ck_ht_map_probe_wr(map, h, &snapshot, &priority,
       (void *)entry->key,
       sizeof(entry->key),
       &probes, &probes_wr);
  }

  if (priority != ((void*)0)) {
   probes = probes_wr;
   break;
  }

  if (candidate != ((void*)0))
   break;

  if (ck_ht_grow_spmc(table, map->capacity << 1) == 0)
   return 0;
 }

 if (candidate == ((void*)0)) {
  candidate = priority;
  empty = 1;
 }

 if (candidate->key != CK_HT_KEY_EMPTY &&
     priority != ((void*)0) && candidate != priority) {







  probes = probes_wr;


  CK_HT_TYPE_STORE(&priority->key_length, entry->key_length);
  CK_HT_TYPE_STORE(&priority->hash, entry->hash);







  if (priority->value == CK_HT_KEY_TOMBSTONE) {
   CK_HT_TYPE_STORE(&map->deletions, map->deletions + 1);
   ck_pr_fence_store();
  }

  ck_pr_store_ptr_unsafe(&priority->value, (void *)entry->value);
  ck_pr_fence_store();
  ck_pr_store_ptr_unsafe(&priority->key, (void *)entry->key);
  ck_pr_fence_store();





  CK_HT_TYPE_STORE(&map->deletions, map->deletions + 1);
  ck_pr_fence_store();

  ck_pr_store_ptr_unsafe(&candidate->key, (void *)CK_HT_KEY_TOMBSTONE);
  ck_pr_fence_store();
 } else {






  bool replace = candidate->key != CK_HT_KEY_EMPTY &&
      candidate->key != CK_HT_KEY_TOMBSTONE;

  if (priority != ((void*)0)) {
   if (priority->key == CK_HT_KEY_TOMBSTONE) {
    CK_HT_TYPE_STORE(&map->deletions, map->deletions + 1);
    ck_pr_fence_store();
   }

   candidate = priority;
   probes = probes_wr;
  }






  CK_HT_TYPE_STORE(&candidate->key_length, entry->key_length);
  CK_HT_TYPE_STORE(&candidate->hash, entry->hash);
  ck_pr_store_ptr_unsafe(&candidate->value, (void *)entry->value);
  ck_pr_fence_store();
  ck_pr_store_ptr_unsafe(&candidate->key, (void *)entry->key);






  if (replace == 0)
   CK_HT_TYPE_STORE(&map->n_entries, map->n_entries + 1);
 }

 ck_ht_map_bound_set(map, h, probes);


 if (map->n_entries * 2 > map->capacity)
  ck_ht_grow_spmc(table, map->capacity << 1);

 if (empty == 1) {
  entry->key = CK_HT_KEY_EMPTY;
 } else {
  *entry = snapshot;
 }

 return 1;
}
