
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {size_t capacity; struct ck_ht_entry* entries; } ;
struct ck_ht_iterator {size_t offset; } ;
struct ck_ht_entry {uintptr_t key; } ;
struct ck_ht {struct ck_ht_map* map; } ;


 uintptr_t CK_HT_KEY_EMPTY ;
 uintptr_t CK_HT_KEY_TOMBSTONE ;

bool
ck_ht_next(struct ck_ht *table,
    struct ck_ht_iterator *i,
    struct ck_ht_entry **entry)
{
 struct ck_ht_map *map = table->map;
 uintptr_t key;

 if (i->offset >= map->capacity)
  return 0;

 do {
  key = map->entries[i->offset].key;
  if (key != CK_HT_KEY_EMPTY && key != CK_HT_KEY_TOMBSTONE)
   break;
 } while (++i->offset < map->capacity);

 if (i->offset >= map->capacity)
  return 0;

 *entry = map->entries + i->offset++;
 return 1;
}
