
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int unsetenv (char const*) ;

__attribute__((used)) static int
lua_unsetenv(lua_State *L)
{
 const char *ev;

 ev = luaL_checkstring(L, 1);
 lua_pushinteger(L, unsetenv(ev));

 return 1;
}
