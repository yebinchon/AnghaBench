
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ischar () ;
 int lua_pushboolean (int *,int ) ;

__attribute__((used)) static int
lua_ischar(lua_State *L)
{

 lua_pushboolean(L, ischar());
 return 1;
}
