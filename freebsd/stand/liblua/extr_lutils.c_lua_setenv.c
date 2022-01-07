
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int setenv (char const*,char const*,int) ;

__attribute__((used)) static int
lua_setenv(lua_State *L)
{
 const char *key, *val;

 key = luaL_checkstring(L, 1);
 val = luaL_checkstring(L, 2);
 lua_pushinteger(L, setenv(key, val, 1));

 return 1;
}
