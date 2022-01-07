
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int gmatch_aux ;
 int luaL_checkstring (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int str_gmatch (lua_State *L) {
  luaL_checkstring(L, 1);
  luaL_checkstring(L, 2);
  lua_settop(L, 2);
  lua_pushinteger(L, 0);
  lua_pushcclosure(L, gmatch_aux, 3);
  return 1;
}
