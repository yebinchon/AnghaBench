
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int lua_State ;


 int OBJECT_META ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;

__attribute__((used)) static ucl_object_t *
lua_ucl_object_get (lua_State *L, int index)
{
 return *((ucl_object_t **) luaL_checkudata(L, index, OBJECT_META));
}
