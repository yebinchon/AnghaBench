
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int NULL_META ;
 int luaL_getmetatable (int *,int ) ;
 int lua_createtable (int *,int ,int) ;
 int lua_newtable (int *) ;
 int lua_newuserdata (int *,int ) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_ucl_null_mt (int *) ;
 int lua_ucl_object_mt (int *) ;
 int lua_ucl_parser_init ;
 int lua_ucl_parser_mt (int *) ;
 int lua_ucl_to_config ;
 int lua_ucl_to_format ;
 int lua_ucl_to_json ;
 int ucl_null ;

int
luaopen_ucl (lua_State *L)
{
 lua_ucl_parser_mt (L);
 lua_ucl_null_mt (L);
 lua_ucl_object_mt (L);


 lua_createtable (L, 0, 2);
 lua_pushliteral (L, "v");
 lua_setfield (L, -2, "__mode");
 lua_pushvalue (L, -1);
 lua_setmetatable (L, -2);
 lua_setfield (L, LUA_REGISTRYINDEX, "ucl.refs");

 lua_newtable (L);

 lua_pushcfunction (L, lua_ucl_parser_init);
 lua_setfield (L, -2, "parser");

 lua_pushcfunction (L, lua_ucl_to_json);
 lua_setfield (L, -2, "to_json");

 lua_pushcfunction (L, lua_ucl_to_config);
 lua_setfield (L, -2, "to_config");

 lua_pushcfunction (L, lua_ucl_to_format);
 lua_setfield (L, -2, "to_format");

 ucl_null = lua_newuserdata (L, 0);
 luaL_getmetatable (L, NULL_META);
 lua_setmetatable (L, -2);

 lua_pushvalue (L, -1);
 lua_setfield (L, LUA_REGISTRYINDEX, "ucl.null");

 lua_setfield (L, -2, "null");

 return 1;
}
