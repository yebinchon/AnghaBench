
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_lids; int * vls; int * lids; } ;
typedef TYPE_1__ vltable_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int ib_net16_t ;


 int OSM_DEFAULT_SL ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;
 int vltable_dealloc (TYPE_1__**) ;

__attribute__((used)) static int vltable_alloc(vltable_t ** vltable, uint64_t size)
{

 *vltable = (vltable_t *) malloc(sizeof(vltable_t));
 if (!(*vltable))
  goto ERROR;
 (*vltable)->num_lids = size;
 (*vltable)->lids = (ib_net16_t *) malloc(size * sizeof(ib_net16_t));
 if (!((*vltable)->lids))
  goto ERROR;
 (*vltable)->vls = (uint8_t *) malloc(size * size * sizeof(uint8_t));
 if (!((*vltable)->vls))
  goto ERROR;
 memset((*vltable)->vls, OSM_DEFAULT_SL, size * size);

 return 0;

ERROR:
 vltable_dealloc(vltable);

 return 1;
}
