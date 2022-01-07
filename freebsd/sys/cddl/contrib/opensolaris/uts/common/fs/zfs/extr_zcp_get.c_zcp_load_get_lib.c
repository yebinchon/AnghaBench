
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int name; int func; } ;


 int lua_pushcclosure (int *,int ,int ) ;
 int lua_setfield (int *,int,int ) ;
 TYPE_1__ zcp_get_prop_info ;

int
zcp_load_get_lib(lua_State *state)
{
 lua_pushcclosure(state, zcp_get_prop_info.func, 0);
 lua_setfield(state, -2, zcp_get_prop_info.name);

 return (1);
}
