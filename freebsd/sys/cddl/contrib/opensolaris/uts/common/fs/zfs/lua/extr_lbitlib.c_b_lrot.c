
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int b_rot (int *,int ) ;
 int luaL_checkint (int *,int) ;

__attribute__((used)) static int b_lrot (lua_State *L) {
  return b_rot(L, luaL_checkint(L, 2));
}
