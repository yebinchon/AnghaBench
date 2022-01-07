
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* func ) (int *) ;int kwargs; int pargs; int name; } ;
typedef TYPE_1__ zcp_list_info_t ;
typedef int lua_State ;


 TYPE_1__* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int stub1 (int *) ;
 int zcp_parse_args (int *,int ,int ,int ) ;

__attribute__((used)) static int
zcp_list_func(lua_State *state)
{
 zcp_list_info_t *info = lua_touserdata(state, lua_upvalueindex(1));

 zcp_parse_args(state, info->name, info->pargs, info->kwargs);

 return (info->func(state));
}
