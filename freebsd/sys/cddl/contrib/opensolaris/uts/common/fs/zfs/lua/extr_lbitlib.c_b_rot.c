
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int b_uint ;


 int LUA_NBITS ;
 int luaL_checkunsigned (int *,int) ;
 int lua_pushunsigned (int *,int) ;
 int trim (int) ;

__attribute__((used)) static int b_rot (lua_State *L, int i) {
  b_uint r = luaL_checkunsigned(L, 1);
  i &= (LUA_NBITS - 1);
  r = trim(r);
  if (i != 0)
    r = (r << i) | (r >> (LUA_NBITS - i));
  lua_pushunsigned(L, trim(r));
  return 1;
}
