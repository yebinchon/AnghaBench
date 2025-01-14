
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {scalar_t__ value; int key; } ;
struct TYPE_5__ {int sizeMask; TYPE_2__* data; } ;
typedef TYPE_1__ COVER_map_t ;
typedef TYPE_2__ COVER_map_pair_t ;


 int COVER_map_hash (TYPE_1__*,int) ;
 scalar_t__ MAP_EMPTY_VALUE ;

__attribute__((used)) static U32 COVER_map_index(COVER_map_t *map, U32 key) {
  const U32 hash = COVER_map_hash(map, key);
  U32 i;
  for (i = hash;; i = (i + 1) & map->sizeMask) {
    COVER_map_pair_t *pos = &map->data[i];
    if (pos->value == MAP_EMPTY_VALUE) {
      return i;
    }
    if (pos->key == key) {
      return i;
    }
  }
}
