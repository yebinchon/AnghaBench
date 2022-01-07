
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int lua_State ;


 int lua_pushnil (int *) ;
 int * lua_ucl_object_get (int *,int) ;
 int ucl_object_push_lua (int *,int *,int) ;

__attribute__((used)) static int
lua_ucl_object_unwrap (lua_State *L)
{
 ucl_object_t *obj;

 obj = lua_ucl_object_get (L, 1);

 if (obj) {
  ucl_object_push_lua (L, obj, 1);
 }
 else {
  lua_pushnil (L);
 }

 return 1;
}
