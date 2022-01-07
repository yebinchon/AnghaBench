
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zri_curinstrs; scalar_t__ zri_maxinstrs; void* zri_timed_out; void* zri_canceled; int zri_sync; } ;
typedef TYPE_1__ zcp_run_info_t ;
typedef int lua_State ;
typedef int lua_Debug ;


 void* B_TRUE ;
 int FORREAL ;
 int JUSTLOOKING ;
 int LUA_REGISTRYINDEX ;
 int ZCP_RUN_INFO_KEY ;
 scalar_t__ issig (int ) ;
 int lua_error (int *) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_pushstring (int *,char*) ;
 TYPE_1__* lua_touserdata (int *,int) ;
 scalar_t__ zfs_lua_check_instrlimit_interval ;

__attribute__((used)) static void
zcp_lua_counthook(lua_State *state, lua_Debug *ar)
{
 lua_getfield(state, LUA_REGISTRYINDEX, ZCP_RUN_INFO_KEY);
 zcp_run_info_t *ri = lua_touserdata(state, -1);





 if (ri->zri_canceled ||
     (!ri->zri_sync && issig(JUSTLOOKING) && issig(FORREAL))) {
  ri->zri_canceled = B_TRUE;
  (void) lua_pushstring(state, "Channel program was canceled.");
  (void) lua_error(state);
 }





 ri->zri_curinstrs += zfs_lua_check_instrlimit_interval;
 if (ri->zri_maxinstrs != 0 && ri->zri_curinstrs > ri->zri_maxinstrs) {
  ri->zri_timed_out = B_TRUE;
  (void) lua_pushstring(state,
      "Channel program timed out.");
  (void) lua_error(state);
 }
}
