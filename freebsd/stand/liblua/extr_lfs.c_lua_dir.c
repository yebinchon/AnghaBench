
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int DIR ;


 int DIR_METATABLE ;
 char* luaL_checkstring (int *,int) ;
 int luaL_getmetatable (int *,int ) ;
 int lua_dir_iter_next ;
 int lua_gettop (int *) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_setmetatable (int *,int) ;
 int * opendir (char const*) ;

__attribute__((used)) static int
lua_dir(lua_State *L)
{
 const char *path;
 DIR *dp;

 if (lua_gettop(L) != 1) {
  lua_pushnil(L);
  return 1;
 }

 path = luaL_checkstring(L, 1);
 dp = opendir(path);
 if (dp == ((void*)0)) {
  lua_pushnil(L);
  return 1;
 }

 lua_pushcfunction(L, lua_dir_iter_next);
 *(DIR **)lua_newuserdata(L, sizeof(DIR **)) = dp;
 luaL_getmetatable(L, DIR_METATABLE);
 lua_setmetatable(L, -2);
 return 2;
}
