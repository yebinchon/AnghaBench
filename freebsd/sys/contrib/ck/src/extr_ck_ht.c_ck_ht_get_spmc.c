
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {int deletions; } ;
struct ck_ht_entry {scalar_t__ key; } ;
struct ck_ht {int mode; int map; } ;
typedef int ck_ht_hash_t ;
typedef struct ck_ht_entry ck_ht_entry_t ;
typedef scalar_t__ CK_HT_TYPE ;


 scalar_t__ CK_HT_KEY_EMPTY ;
 int CK_HT_MODE_BYTESTRING ;
 scalar_t__ CK_HT_TYPE_LOAD (int *) ;
 void* ck_ht_entry_key (struct ck_ht_entry*) ;
 int ck_ht_entry_key_length (struct ck_ht_entry*) ;
 struct ck_ht_entry* ck_ht_map_probe_rd (struct ck_ht_map*,int ,struct ck_ht_entry*,void*,int) ;
 struct ck_ht_map* ck_pr_load_ptr (int *) ;

bool
ck_ht_get_spmc(struct ck_ht *table,
    ck_ht_hash_t h,
    ck_ht_entry_t *entry)
{
 struct ck_ht_entry *candidate, snapshot;
 struct ck_ht_map *map;
 CK_HT_TYPE d, d_prime;

restart:
 map = ck_pr_load_ptr(&table->map);





 d = CK_HT_TYPE_LOAD(&map->deletions);

 if (table->mode & CK_HT_MODE_BYTESTRING) {
  candidate = ck_ht_map_probe_rd(map, h, &snapshot,
      ck_ht_entry_key(entry), ck_ht_entry_key_length(entry));
 } else {
  candidate = ck_ht_map_probe_rd(map, h, &snapshot,
      (void *)entry->key, sizeof(entry->key));
 }

 d_prime = CK_HT_TYPE_LOAD(&map->deletions);
 if (d != d_prime) {





  goto restart;
 }

 if (candidate == ((void*)0) || snapshot.key == CK_HT_KEY_EMPTY)
  return 0;

 *entry = snapshot;
 return 1;
}
