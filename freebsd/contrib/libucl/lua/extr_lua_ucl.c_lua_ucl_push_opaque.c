
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int lua_State ;


 int OBJECT_META ;
 int luaL_getmetatable (int *,int ) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static void
lua_ucl_push_opaque (lua_State *L, ucl_object_t *obj)
{
 ucl_object_t **pobj;

 pobj = lua_newuserdata (L, sizeof (*pobj));
 *pobj = obj;
 luaL_getmetatable (L, OBJECT_META);
 lua_setmetatable (L, -2);
}
