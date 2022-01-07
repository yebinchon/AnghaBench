
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int IO_INPUT ;
 int LUA_REGISTRYINDEX ;
 int aux_lines (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int lua_getfield (int *,int ,int ) ;
 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_isnone (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_replace (int *,int) ;
 int opencheck (int *,char const*,char*) ;
 int tofile (int *) ;

__attribute__((used)) static int io_lines (lua_State *L) {
  int toclose;
  if (lua_isnone(L, 1)) lua_pushnil(L);
  if (lua_isnil(L, 1)) {
    lua_getfield(L, LUA_REGISTRYINDEX, IO_INPUT);
    lua_replace(L, 1);
    tofile(L);
    toclose = 0;
  }
  else {
    const char *filename = luaL_checkstring(L, 1);
    opencheck(L, filename, "r");
    lua_replace(L, 1);
    toclose = 1;
  }
  aux_lines(L, toclose);
  return 1;
}
