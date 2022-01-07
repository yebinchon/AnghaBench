
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int b_shift (int *,int ,int ) ;
 int luaL_checkint (int *,int) ;
 int luaL_checkunsigned (int *,int) ;

__attribute__((used)) static int b_lshift (lua_State *L) {
  return b_shift(L, luaL_checkunsigned(L, 1), luaL_checkint(L, 2));
}
