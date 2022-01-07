
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_lids; int lids; } ;
typedef TYPE_1__ vltable_t ;
typedef int ib_net16_t ;


 int cmp_lids ;
 int qsort (int ,int ,int,int ) ;

__attribute__((used)) static inline void vltable_sort_lids(vltable_t * vltable)
{
 qsort(vltable->lids, vltable->num_lids, sizeof(ib_net16_t), cmp_lids);
}
