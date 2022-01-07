
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int PARSER_META ;
 int luaL_newmetatable (int *,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_ucl_parser_gc ;
 int lua_ucl_parser_get_object ;
 int lua_ucl_parser_get_object_wrapped ;
 int lua_ucl_parser_parse_file ;
 int lua_ucl_parser_parse_string ;
 int lua_ucl_parser_validate ;

__attribute__((used)) static void
lua_ucl_parser_mt (lua_State *L)
{
 luaL_newmetatable (L, PARSER_META);

 lua_pushvalue(L, -1);
 lua_setfield(L, -2, "__index");

 lua_pushcfunction (L, lua_ucl_parser_gc);
 lua_setfield (L, -2, "__gc");

 lua_pushcfunction (L, lua_ucl_parser_parse_file);
 lua_setfield (L, -2, "parse_file");

 lua_pushcfunction (L, lua_ucl_parser_parse_string);
 lua_setfield (L, -2, "parse_string");

 lua_pushcfunction (L, lua_ucl_parser_get_object);
 lua_setfield (L, -2, "get_object");

 lua_pushcfunction (L, lua_ucl_parser_get_object_wrapped);
 lua_setfield (L, -2, "get_object_wrapped");

 lua_pushcfunction (L, lua_ucl_parser_validate);
 lua_setfield (L, -2, "validate");

 lua_pop (L, 1);
}
