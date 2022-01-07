
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ ucl_object_t ;


 int NBBY ;
 int PRIOBITS ;

void
ucl_object_set_priority (ucl_object_t *obj,
  unsigned int priority)
{
 if (obj != ((void*)0)) {
  priority &= (0x1 << PRIOBITS) - 1;
  priority <<= ((sizeof (obj->flags) * NBBY) - PRIOBITS);
  priority |= obj->flags & ((1 << ((sizeof (obj->flags) * NBBY) -
    PRIOBITS)) - 1);
  obj->flags = priority;
 }
}
