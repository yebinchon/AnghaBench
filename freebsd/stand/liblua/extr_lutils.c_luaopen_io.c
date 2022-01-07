
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int iolib ;
 int luaL_newlib (int *,int ) ;

int
luaopen_io(lua_State *L)
{
 luaL_newlib(L, iolib);
 return 1;
}
