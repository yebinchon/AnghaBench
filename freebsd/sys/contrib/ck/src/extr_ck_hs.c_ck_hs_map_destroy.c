
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_malloc {int (* free ) (struct ck_hs_map*,int ,int) ;} ;
struct ck_hs_map {int size; } ;


 int stub1 (struct ck_hs_map*,int ,int) ;

__attribute__((used)) static void
ck_hs_map_destroy(struct ck_malloc *m, struct ck_hs_map *map, bool defer)
{

 m->free(map, map->size, defer);
 return;
}
