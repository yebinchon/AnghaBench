
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ck_hs {TYPE_1__* map; } ;
struct TYPE_2__ {unsigned long n_entries; } ;



unsigned long
ck_hs_count(struct ck_hs *hs)
{

 return hs->map->n_entries;
}
