
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int lua_State ;


 int lua_pushstring (int *,char const*) ;
 int lua_settable (int *,int) ;
 int ucl_object_push_lua (int *,int const*,int) ;

__attribute__((used)) static void
ucl_object_lua_push_element (lua_State *L, const char *key,
  const ucl_object_t *obj)
{
 lua_pushstring (L, key);
 ucl_object_push_lua (L, obj, 1);
 lua_settable (L, -3);
}
