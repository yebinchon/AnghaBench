
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int DIR_METATABLE ;
 int luaL_newmetatable (int *,int ) ;
 int lua_dir_iter_close ;
 int lua_dir_iter_next ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static void
register_metatable(lua_State *L)
{




 luaL_newmetatable(L, DIR_METATABLE);

 lua_newtable(L);
 lua_pushcfunction(L, lua_dir_iter_next);
 lua_setfield(L, -2, "next");
 lua_pushcfunction(L, lua_dir_iter_close);
 lua_setfield(L, -2, "close");


 lua_setfield(L, -2, "__index");

 lua_pushcfunction(L, lua_dir_iter_close);
 lua_setfield(L, -2, "__gc");

 lua_pop(L, 1);
}
