
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ck_rhs {TYPE_1__* map; } ;
struct TYPE_2__ {unsigned long n_entries; } ;



unsigned long
ck_rhs_count(struct ck_rhs *hs)
{

 return hs->map->n_entries;
}
