
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int,int) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int lua_replace (int *,int) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static int pack (lua_State *L) {
  int n = lua_gettop(L);
  lua_createtable(L, n, 1);
  lua_pushinteger(L, n);
  lua_setfield(L, -2, "n");
  if (n > 0) {
    int i;
    lua_pushvalue(L, 1);
    lua_rawseti(L, -2, 1);
    lua_replace(L, 1);
    for (i = n; i >= 2; i--)
      lua_rawseti(L, 1, i);
  }
  return 1;
}
