
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int command_errbuf ;
 int lua_pushstring (int *,int ) ;

__attribute__((used)) static int
lua_command_error(lua_State *L)
{

 lua_pushstring(L, command_errbuf);
 return 1;
}
