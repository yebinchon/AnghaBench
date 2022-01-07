
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ud; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ ucl_object_t ;
struct ucl_lua_funcdata {int dummy; } ;


 scalar_t__ UCL_USERDATA ;

struct ucl_lua_funcdata*
ucl_object_toclosure (const ucl_object_t *obj)
{
 if (obj == ((void*)0) || obj->type != UCL_USERDATA) {
  return ((void*)0);
 }

 return (struct ucl_lua_funcdata*)obj->value.ud;
}
