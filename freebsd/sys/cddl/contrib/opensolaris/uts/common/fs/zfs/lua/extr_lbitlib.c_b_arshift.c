
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int b_uint ;


 int ALLONES ;
 int LUA_NBITS ;
 int b_shift (int *,int,int) ;
 int luaL_checkint (int *,int) ;
 int luaL_checkunsigned (int *,int) ;
 int lua_pushunsigned (int *,int) ;
 int trim (int) ;

__attribute__((used)) static int b_arshift (lua_State *L) {
  b_uint r = luaL_checkunsigned(L, 1);
  int i = luaL_checkint(L, 2);
  if (i < 0 || !(r & ((b_uint)1 << (LUA_NBITS - 1))))
    return b_shift(L, r, -i);
  else {
    if (i >= LUA_NBITS) r = ALLONES;
    else
      r = trim((r >> i) | ~(~(b_uint)0 >> i));
    lua_pushunsigned(L, r);
    return 1;
  }
}
