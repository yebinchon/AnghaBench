
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int fslib ;
 int luaL_newlib (int *,int ) ;
 int register_metatable (int *) ;

int
luaopen_lfs(lua_State *L)
{
 register_metatable(L);
 luaL_newlib(L, fslib);
 return 1;
}
