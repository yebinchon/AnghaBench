
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_lids; scalar_t__* vls; } ;
typedef TYPE_1__ vltable_t ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;



__attribute__((used)) static void vltable_change_vl(vltable_t * vltable, uint8_t from, uint8_t to,
         uint64_t count)
{
 uint64_t set = 0, stop = 0;
 uint64_t ind1 = 0, ind2 = 0;

 for (ind1 = 0; ind1 < vltable->num_lids; ind1++) {
  for (ind2 = 0; ind2 < vltable->num_lids; ind2++) {
   if (set == count) {
    stop = 1;
    break;
   }
   if (ind1 != ind2) {
    if (vltable->
        vls[ind1 + ind2 * vltable->num_lids] ==
        from) {
     vltable->vls[ind1 +
           ind2 * vltable->num_lids] =
         to;
     set++;
    }
   }
  }
  if (stop)
   break;
 }
}
