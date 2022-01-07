
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int lua_State ;



 int lua_type (int *,int) ;
 int * ucl_object_lua_fromelt (int *,int) ;
 int * ucl_object_lua_fromtable (int *,int) ;

ucl_object_t *
ucl_object_lua_import (lua_State *L, int idx)
{
 ucl_object_t *obj;
 int t;

 t = lua_type (L, idx);
 switch (t) {
 case 128:
  obj = ucl_object_lua_fromtable (L, idx);
  break;
 default:
  obj = ucl_object_lua_fromelt (L, idx);
  break;
 }

 return obj;
}
