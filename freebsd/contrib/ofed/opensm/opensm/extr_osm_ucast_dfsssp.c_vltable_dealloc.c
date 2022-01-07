
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* vls; struct TYPE_4__* lids; } ;
typedef TYPE_1__ vltable_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void vltable_dealloc(vltable_t ** vltable)
{
 if (*vltable) {
  if ((*vltable)->lids)
   free((*vltable)->lids);
  if ((*vltable)->vls)
   free((*vltable)->vls);
  free(*vltable);
  *vltable = ((void*)0);
 }
}
