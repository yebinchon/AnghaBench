
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
typedef int parser ;
typedef int lua_State ;


 int PARSER_META ;
 int UCL_PARSER_NO_FILEVARS ;
 int luaL_getmetatable (int *,int ) ;
 int lua_gettop (int *) ;
 struct ucl_parser** lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_setmetatable (int *,int) ;
 int lua_tonumber (int *,int) ;
 struct ucl_parser* ucl_parser_new (int) ;

__attribute__((used)) static int
lua_ucl_parser_init (lua_State *L)
{
 struct ucl_parser *parser, **pparser;
 int flags = UCL_PARSER_NO_FILEVARS;

 if (lua_gettop (L) >= 1) {
  flags = lua_tonumber (L, 1);
 }

 parser = ucl_parser_new (flags);
 if (parser == ((void*)0)) {
  lua_pushnil (L);
 }

 pparser = lua_newuserdata (L, sizeof (parser));
 *pparser = parser;
 luaL_getmetatable (L, PARSER_META);
 lua_setmetatable (L, -2);

 return 1;
}
