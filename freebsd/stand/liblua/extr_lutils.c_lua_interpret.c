
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int interp_run (char const*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;

__attribute__((used)) static int
lua_interpret(lua_State *L)
{
 const char *interp_string;

 if (lua_gettop(L) != 1) {
  lua_pushnil(L);
  return 1;
 }

 interp_string = luaL_checkstring(L, 1);
 lua_pushinteger(L, interp_run(interp_string));
 return 1;
}
