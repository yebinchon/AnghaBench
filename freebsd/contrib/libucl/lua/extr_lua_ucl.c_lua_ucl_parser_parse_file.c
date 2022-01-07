
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushstring (int *,char*) ;
 struct ucl_parser* lua_ucl_parser_get (int *,int) ;
 scalar_t__ ucl_parser_add_file (struct ucl_parser*,char const*) ;
 char* ucl_parser_get_error (struct ucl_parser*) ;

__attribute__((used)) static int
lua_ucl_parser_parse_file (lua_State *L)
{
 struct ucl_parser *parser;
 const char *file;
 int ret = 2;

 parser = lua_ucl_parser_get (L, 1);
 file = luaL_checkstring (L, 2);

 if (parser != ((void*)0) && file != ((void*)0)) {
  if (ucl_parser_add_file (parser, file)) {
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
