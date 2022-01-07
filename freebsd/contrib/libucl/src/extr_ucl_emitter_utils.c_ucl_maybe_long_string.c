
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sv; } ;
struct TYPE_5__ {scalar_t__ len; int flags; TYPE_1__ value; } ;
typedef TYPE_2__ ucl_object_t ;


 scalar_t__ LONG_STRING_LIMIT ;
 int UCL_OBJECT_MULTILINE ;
 int * memchr (int ,char,scalar_t__) ;

bool
ucl_maybe_long_string (const ucl_object_t *obj)
{
 if (obj->len > LONG_STRING_LIMIT || (obj->flags & UCL_OBJECT_MULTILINE)) {

  if (memchr (obj->value.sv, '\n', obj->len) != ((void*)0)) {
   return 1;
  }
 }

 return 0;
}
