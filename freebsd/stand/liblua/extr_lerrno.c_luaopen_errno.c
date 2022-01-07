
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int errnolib ;
 int lerrno_register (int *) ;
 int luaL_newlib (int *,int ) ;

int
luaopen_errno(lua_State *L)
{
 luaL_newlib(L, errnolib);
 lerrno_register(L);
 return 1;
}
