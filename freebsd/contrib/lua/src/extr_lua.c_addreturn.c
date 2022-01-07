
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int luaL_loadbuffer (int *,char const*,int ,char*) ;
 int lua_pop (int *,int) ;
 char* lua_pushfstring (int *,char*,char const*) ;
 int lua_remove (int *,int) ;
 int lua_saveline (int *,char const*) ;
 char* lua_tostring (int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int addreturn (lua_State *L) {
  const char *line = lua_tostring(L, -1);
  const char *retline = lua_pushfstring(L, "return %s;", line);
  int status = luaL_loadbuffer(L, retline, strlen(retline), "=stdin");
  if (status == LUA_OK) {
    lua_remove(L, -2);
    if (line[0] != '\0')
      lua_saveline(L, line);
  }
  else
    lua_pop(L, 2);
  return status;
}
