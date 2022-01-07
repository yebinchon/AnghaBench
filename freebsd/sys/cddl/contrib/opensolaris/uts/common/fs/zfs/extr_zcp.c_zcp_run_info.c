
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zcp_run_info_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int ZCP_RUN_INFO_KEY ;
 int lua_getfield (int *,int ,int ) ;
 int lua_pop (int *,int) ;
 int * lua_touserdata (int *,int) ;

zcp_run_info_t *
zcp_run_info(lua_State *state)
{
 zcp_run_info_t *ri;

 lua_getfield(state, LUA_REGISTRYINDEX, ZCP_RUN_INFO_KEY);
 ri = lua_touserdata(state, -1);
 lua_pop(state, 1);
 return (ri);
}
