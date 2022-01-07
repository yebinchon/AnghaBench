
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_tostring (int *,int) ;
 int panic (char*,int ) ;

__attribute__((used)) static int
zcp_panic_cb(lua_State *state)
{
 panic("unprotected error in call to Lua API (%s)\n",
     lua_tostring(state, -1));
 return (0);
}
