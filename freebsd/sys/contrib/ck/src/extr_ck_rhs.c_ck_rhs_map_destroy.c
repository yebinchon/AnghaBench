
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {int size; } ;
struct ck_malloc {int (* free ) (struct ck_rhs_map*,int ,int) ;} ;


 int stub1 (struct ck_rhs_map*,int ,int) ;

__attribute__((used)) static void
ck_rhs_map_destroy(struct ck_malloc *m, struct ck_rhs_map *map, bool defer)
{

 m->free(map, map->size, defer);
 return;
}
