
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {scalar_t__ n_entries; } ;
struct ck_ht_entry {scalar_t__ key; } ;
struct ck_ht {int mode; struct ck_ht_map* map; } ;
typedef int ck_ht_hash_t ;
typedef struct ck_ht_entry ck_ht_entry_t ;


 scalar_t__ CK_HT_KEY_EMPTY ;
 scalar_t__ CK_HT_KEY_TOMBSTONE ;
 int CK_HT_MODE_BYTESTRING ;
 int CK_HT_TYPE_STORE (scalar_t__*,scalar_t__) ;
 void* ck_ht_entry_key (struct ck_ht_entry*) ;
 int ck_ht_entry_key_length (struct ck_ht_entry*) ;
 struct ck_ht_entry* ck_ht_map_probe_rd (struct ck_ht_map*,int ,struct ck_ht_entry*,void*,int) ;
 int ck_pr_fence_store () ;
 int ck_pr_store_ptr_unsafe (scalar_t__*,void*) ;

bool
ck_ht_remove_spmc(struct ck_ht *table,
    ck_ht_hash_t h,
    ck_ht_entry_t *entry)
{
 struct ck_ht_map *map;
 struct ck_ht_entry *candidate, snapshot;

 map = table->map;

 if (table->mode & CK_HT_MODE_BYTESTRING) {
  candidate = ck_ht_map_probe_rd(map, h, &snapshot,
      ck_ht_entry_key(entry),
      ck_ht_entry_key_length(entry));
 } else {
  candidate = ck_ht_map_probe_rd(map, h, &snapshot,
      (void *)entry->key,
      sizeof(entry->key));
 }


 if (candidate == ((void*)0) || snapshot.key == CK_HT_KEY_EMPTY)
  return 0;

 *entry = snapshot;

 ck_pr_store_ptr_unsafe(&candidate->key, (void *)CK_HT_KEY_TOMBSTONE);
 ck_pr_fence_store();
 CK_HT_TYPE_STORE(&map->n_entries, map->n_entries - 1);
 return 1;
}
