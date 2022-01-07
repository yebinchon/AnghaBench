
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int LStream ;


 int LUA_FILEHANDLE ;
 scalar_t__ isclosed (int *) ;
 int luaL_checkany (int *,int) ;
 scalar_t__ luaL_testudata (int *,int,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;

__attribute__((used)) static int io_type (lua_State *L) {
  LStream *p;
  luaL_checkany(L, 1);
  p = (LStream *)luaL_testudata(L, 1, LUA_FILEHANDLE);
  if (p == ((void*)0))
    lua_pushnil(L);
  else if (isclosed(p))
    lua_pushliteral(L, "closed file");
  else
    lua_pushliteral(L, "file");
  return 1;
}
