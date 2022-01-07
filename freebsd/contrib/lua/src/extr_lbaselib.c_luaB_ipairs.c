
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ipairsaux ;
 int luaL_checkany (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int pairsmeta (int *,char*,int,int ) ;

__attribute__((used)) static int luaB_ipairs (lua_State *L) {



  luaL_checkany(L, 1);
  lua_pushcfunction(L, ipairsaux);
  lua_pushvalue(L, 1);
  lua_pushinteger(L, 0);
  return 3;

}
