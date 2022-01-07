
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int NULL_META ;
 int luaL_newmetatable (int *,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_ucl_null_tostring ;

__attribute__((used)) static void
lua_ucl_null_mt (lua_State *L)
{
 luaL_newmetatable (L, NULL_META);

 lua_pushcfunction (L, lua_ucl_null_tostring);
 lua_setfield (L, -2, "__tostring");

 lua_pop (L, 1);
}
