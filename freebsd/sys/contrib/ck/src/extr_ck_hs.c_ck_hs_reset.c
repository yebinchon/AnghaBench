
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {int capacity; } ;
struct ck_hs {struct ck_hs_map* map; } ;


 int ck_hs_reset_size (struct ck_hs*,int ) ;

bool
ck_hs_reset(struct ck_hs *hs)
{
 struct ck_hs_map *previous;

 previous = hs->map;
 return ck_hs_reset_size(hs, previous->capacity);
}
