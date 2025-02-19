
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {int sizeLog; int size; int sizeMask; int * data; } ;
typedef TYPE_1__ COVER_map_t ;
typedef int COVER_map_pair_t ;


 int COVER_map_clear (TYPE_1__*) ;
 int ZSTD_highbit32 (int) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static int COVER_map_init(COVER_map_t *map, U32 size) {
  map->sizeLog = ZSTD_highbit32(size) + 2;
  map->size = (U32)1 << map->sizeLog;
  map->sizeMask = map->size - 1;
  map->data = (COVER_map_pair_t *)malloc(map->size * sizeof(COVER_map_pair_t));
  if (!map->data) {
    map->sizeLog = 0;
    map->size = 0;
    return 0;
  }
  COVER_map_clear(map);
  return 1;
}
