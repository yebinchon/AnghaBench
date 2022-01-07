
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zeg_name; scalar_t__ zeg_errno; } ;
typedef TYPE_1__ zcp_errno_global_t ;
typedef int lua_State ;
typedef int lua_Number ;


 TYPE_1__* errno_globals ;
 int lua_pushnumber (int *,int ) ;
 int lua_setglobal (int *,int *) ;

__attribute__((used)) static void
zcp_load_errno_globals(lua_State *state)
{
 const zcp_errno_global_t *global = errno_globals;
 while (global->zeg_name != ((void*)0)) {
  lua_pushnumber(state, (lua_Number)global->zeg_errno);
  lua_setglobal(state, global->zeg_name);
  global++;
 }
}
