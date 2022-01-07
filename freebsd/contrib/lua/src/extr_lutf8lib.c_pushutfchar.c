
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 scalar_t__ MAXUNICODE ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int lua_pushfstring (int *,char*,long) ;

__attribute__((used)) static void pushutfchar (lua_State *L, int arg) {
  lua_Integer code = luaL_checkinteger(L, arg);
  luaL_argcheck(L, 0 <= code && code <= MAXUNICODE, arg, "value out of range");
  lua_pushfstring(L, "%U", (long)code);
}
