
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int lua_State ;


 int UCL_EMIT_CONFIG ;
 int lua_pushnil (int *) ;
 int lua_ucl_to_string (int *,int *,int ) ;
 int * ucl_object_lua_import (int *,int) ;
 int ucl_object_unref (int *) ;

__attribute__((used)) static int
lua_ucl_to_config (lua_State *L)
{
 ucl_object_t *obj;

 obj = ucl_object_lua_import (L, 1);
 if (obj != ((void*)0)) {
  lua_ucl_to_string (L, obj, UCL_EMIT_CONFIG);
  ucl_object_unref (obj);
 }
 else {
  lua_pushnil (L);
 }

 return 1;
}
