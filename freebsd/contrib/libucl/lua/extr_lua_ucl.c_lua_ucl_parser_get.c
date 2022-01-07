
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
typedef int lua_State ;


 int PARSER_META ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;

__attribute__((used)) static struct ucl_parser *
lua_ucl_parser_get (lua_State *L, int index)
{
 return *((struct ucl_parser **) luaL_checkudata(L, index, PARSER_META));
}
