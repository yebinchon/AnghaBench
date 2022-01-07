
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int delay (int) ;
 scalar_t__ luaL_checknumber (int *,int) ;

__attribute__((used)) static int
lua_delay(lua_State *L)
{

 delay((int)luaL_checknumber(L, 1));
 return 0;
}
