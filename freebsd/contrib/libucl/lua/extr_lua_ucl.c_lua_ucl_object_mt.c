
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int OBJECT_META ;
 int luaL_newmetatable (int *,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_ucl_object_gc ;
 int lua_ucl_object_tostring ;
 int lua_ucl_object_unwrap ;
 int lua_ucl_object_validate ;

__attribute__((used)) static void
lua_ucl_object_mt (lua_State *L)
{
 luaL_newmetatable (L, OBJECT_META);

 lua_pushvalue(L, -1);
 lua_setfield(L, -2, "__index");

 lua_pushcfunction (L, lua_ucl_object_gc);
 lua_setfield (L, -2, "__gc");

 lua_pushcfunction (L, lua_ucl_object_tostring);
 lua_setfield (L, -2, "__tostring");

 lua_pushcfunction (L, lua_ucl_object_tostring);
 lua_setfield (L, -2, "tostring");

 lua_pushcfunction (L, lua_ucl_object_unwrap);
 lua_setfield (L, -2, "unwrap");

 lua_pushcfunction (L, lua_ucl_object_unwrap);
 lua_setfield (L, -2, "tolua");

 lua_pushcfunction (L, lua_ucl_object_validate);
 lua_setfield (L, -2, "validate");

 lua_pushstring (L, OBJECT_META);
 lua_setfield (L, -2, "class");

 lua_pop (L, 1);
}
