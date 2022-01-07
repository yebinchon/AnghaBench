
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {scalar_t__* generation; } ;


 unsigned long CK_HS_G_MASK ;
 int ck_pr_fence_store () ;
 int ck_pr_store_uint (scalar_t__*,scalar_t__) ;

__attribute__((used)) static inline void
ck_hs_map_signal(struct ck_hs_map *map, unsigned long h)
{

 h &= CK_HS_G_MASK;
 ck_pr_store_uint(&map->generation[h],
     map->generation[h] + 1);
 ck_pr_fence_store();
 return;
}
