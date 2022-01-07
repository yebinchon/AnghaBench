
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
typedef int lua_State ;
typedef enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;


 scalar_t__ LUA_TSTRING ;
 int UCL_DUPLICATE_APPEND ;
 int UCL_PARSE_UCL ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_tostring (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 struct ucl_parser* lua_ucl_parser_get (int *,int) ;
 int lua_ucl_str_to_parse_type (int ) ;
 scalar_t__ ucl_parser_add_chunk_full (struct ucl_parser*,unsigned char const*,size_t,int ,int ,int) ;
 char* ucl_parser_get_error (struct ucl_parser*) ;

__attribute__((used)) static int
lua_ucl_parser_parse_string (lua_State *L)
{
 struct ucl_parser *parser;
 const char *string;
 size_t llen;
 enum ucl_parse_type type = UCL_PARSE_UCL;
 int ret = 2;

 parser = lua_ucl_parser_get (L, 1);
 string = luaL_checklstring (L, 2, &llen);

 if (lua_type (L, 3) == LUA_TSTRING) {
  type = lua_ucl_str_to_parse_type (lua_tostring (L, 3));
 }

 if (parser != ((void*)0) && string != ((void*)0)) {
  if (ucl_parser_add_chunk_full (parser, (const unsigned char *)string,
    llen, 0, UCL_DUPLICATE_APPEND, type)) {
   lua_pushboolean (L, 1);
   ret = 1;
  }
  else {
   lua_pushboolean (L, 0);
   lua_pushstring (L, ucl_parser_get_error (parser));
  }
 }
 else {
  lua_pushboolean (L, 0);
  lua_pushstring (L, "invalid arguments");
 }

 return ret;
}
