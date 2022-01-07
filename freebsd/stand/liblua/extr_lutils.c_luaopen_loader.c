
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_PATH ;
 int MACHINE ;
 int MACHINE_ARCH ;
 int loaderlib ;
 int luaL_newlib (int *,int ) ;
 int lua_printc ;
 int lua_pushstring (int *,int ) ;
 int lua_register (int *,char*,int ) ;
 int lua_setfield (int *,int,char*) ;

int
luaopen_loader(lua_State *L)
{
 luaL_newlib(L, loaderlib);

 lua_pushstring(L, MACHINE);
 lua_setfield(L, -2, "machine");
 lua_pushstring(L, MACHINE_ARCH);
 lua_setfield(L, -2, "machine_arch");
 lua_pushstring(L, LUA_PATH);
 lua_setfield(L, -2, "lua_path");

 lua_register(L, "printc", lua_printc);
 return 1;
}
