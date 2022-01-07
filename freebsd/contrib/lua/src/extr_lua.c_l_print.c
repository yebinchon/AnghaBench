
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MINSTACK ;
 scalar_t__ LUA_OK ;
 int l_message (int ,int ) ;
 int luaL_checkstack (int *,int ,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_pcall (int *,int,int ,int ) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_tostring (int *,int) ;
 int progname ;

__attribute__((used)) static void l_print (lua_State *L) {
  int n = lua_gettop(L);
  if (n > 0) {
    luaL_checkstack(L, LUA_MINSTACK, "too many results to print");
    lua_getglobal(L, "print");
    lua_insert(L, 1);
    if (lua_pcall(L, n, 0, 0) != LUA_OK)
      l_message(progname, lua_pushfstring(L, "error calling 'print' (%s)",
                                             lua_tostring(L, -1)));
  }
}
