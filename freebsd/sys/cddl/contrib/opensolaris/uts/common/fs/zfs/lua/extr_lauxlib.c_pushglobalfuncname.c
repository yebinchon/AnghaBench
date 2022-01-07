
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 scalar_t__ findfield (int *,int,int) ;
 int lua_copy (int *,int,int) ;
 int lua_getinfo (int *,char*,int *) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushglobaltable (int *) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int pushglobalfuncname (lua_State *L, lua_Debug *ar) {
  int top = lua_gettop(L);
  lua_getinfo(L, "f", ar);
  lua_pushglobaltable(L);
  if (findfield(L, top + 1, 2)) {
    lua_copy(L, -1, top + 1);
    lua_pop(L, 2);
    return 1;
  }
  else {
    lua_settop(L, top);
    return 0;
  }
}
