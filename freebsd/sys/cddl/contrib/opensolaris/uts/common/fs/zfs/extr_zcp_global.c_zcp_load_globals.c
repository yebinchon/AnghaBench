
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int zcp_load_errno_globals (int *) ;

void
zcp_load_globals(lua_State *state)
{
 zcp_load_errno_globals(state);
}
