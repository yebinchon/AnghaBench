
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_lids; int * vls; } ;
typedef TYPE_1__ vltable_t ;
typedef int uint8_t ;
typedef int int64_t ;
typedef int ib_net16_t ;


 int vltable_get_lidindex (int *,TYPE_1__*) ;

__attribute__((used)) static inline void vltable_insert(vltable_t * vltable, ib_net16_t slid,
      ib_net16_t dlid, uint8_t vl)
{
 int64_t ind1 = vltable_get_lidindex(&slid, vltable);
 int64_t ind2 = vltable_get_lidindex(&dlid, vltable);

 if (ind1 > -1 && ind2 > -1)
  vltable->vls[ind1 + ind2 * vltable->num_lids] = vl;
}
