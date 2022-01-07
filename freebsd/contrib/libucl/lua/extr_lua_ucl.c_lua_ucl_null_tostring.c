
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushstring (int *,char*) ;

__attribute__((used)) static int
lua_ucl_null_tostring (lua_State* L)
{
 lua_pushstring (L, "null");
 return 1;
}
