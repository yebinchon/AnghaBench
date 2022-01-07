
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ ucl_object_t ;


 int NBBY ;
 int PRIOBITS ;

unsigned int
ucl_object_get_priority (const ucl_object_t *obj)
{
 if (obj == ((void*)0)) {
  return 0;
 }

 return (obj->flags >> ((sizeof (obj->flags) * NBBY) - PRIOBITS));
}
