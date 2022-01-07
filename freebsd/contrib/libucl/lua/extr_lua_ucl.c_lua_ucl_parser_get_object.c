
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser {int dummy; } ;
typedef int lua_State ;


 int lua_pushnil (int *) ;
 struct ucl_parser* lua_ucl_parser_get (int *,int) ;
 int ucl_object_push_lua (int *,int *,int) ;
 int ucl_object_unref (int *) ;
 int * ucl_parser_get_object (struct ucl_parser*) ;

__attribute__((used)) static int
lua_ucl_parser_get_object (lua_State *L)
{
 struct ucl_parser *parser;
 ucl_object_t *obj;
 int ret = 1;

 parser = lua_ucl_parser_get (L, 1);
 obj = ucl_parser_get_object (parser);

 if (obj != ((void*)0)) {
  ret = ucl_object_push_lua (L, obj, 0);

  ucl_object_unref (obj);
 }
 else {
  lua_pushnil (L);
 }

 return ret;
}
