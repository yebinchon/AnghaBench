
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int lua_State ;




 int ucl_object_lua_push_array (int *,TYPE_1__ const*) ;
 int ucl_object_lua_push_object (int *,TYPE_1__ const*,int) ;
 int ucl_object_lua_push_scalar (int *,TYPE_1__ const*,int) ;

int
ucl_object_push_lua (lua_State *L, const ucl_object_t *obj, bool allow_array)
{
 switch (obj->type) {
 case 128:
  return ucl_object_lua_push_object (L, obj, allow_array);
 case 129:
  return ucl_object_lua_push_array (L, obj);
 default:
  return ucl_object_lua_push_scalar (L, obj, allow_array);
 }
}
