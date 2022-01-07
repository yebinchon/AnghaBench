
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
typedef int lua_State ;


 struct ucl_parser* lua_ucl_parser_get (int *,int) ;
 int ucl_parser_free (struct ucl_parser*) ;

__attribute__((used)) static int
lua_ucl_parser_gc (lua_State *L)
{
 struct ucl_parser *parser;

 parser = lua_ucl_parser_get (L, 1);
 ucl_parser_free (parser);

 return 0;
}
