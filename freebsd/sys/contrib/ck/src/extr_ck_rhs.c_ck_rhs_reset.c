
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {int capacity; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;


 int ck_rhs_reset_size (struct ck_rhs*,int ) ;

bool
ck_rhs_reset(struct ck_rhs *hs)
{
 struct ck_rhs_map *previous;

 previous = hs->map;
 return ck_rhs_reset_size(hs, previous->capacity);
}
