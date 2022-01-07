
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ck_rhs {TYPE_1__* map; } ;
struct TYPE_2__ {int capacity; } ;


 int ck_rhs_grow (struct ck_rhs*,int ) ;

bool
ck_rhs_rebuild(struct ck_rhs *hs)
{

 return ck_rhs_grow(hs, hs->map->capacity);
}
