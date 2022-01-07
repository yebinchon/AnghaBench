
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ck_hs {TYPE_1__* map; } ;
struct TYPE_2__ {int capacity; } ;


 int ck_hs_grow (struct ck_hs*,int ) ;

bool
ck_hs_rebuild(struct ck_hs *hs)
{

 return ck_hs_grow(hs, hs->map->capacity);
}
