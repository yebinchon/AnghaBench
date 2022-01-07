
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int b_uint ;


 int LUA_NBITS ;
 int lua_pushunsigned (int *,int) ;
 int trim (int) ;

__attribute__((used)) static int b_shift (lua_State *L, b_uint r, int i) {
  if (i < 0) {
    i = -i;
    r = trim(r);
    if (i >= LUA_NBITS) r = 0;
    else r >>= i;
  }
  else {
    if (i >= LUA_NBITS) r = 0;
    else r <<= i;
    r = trim(r);
  }
  lua_pushunsigned(L, r);
  return 1;
}
