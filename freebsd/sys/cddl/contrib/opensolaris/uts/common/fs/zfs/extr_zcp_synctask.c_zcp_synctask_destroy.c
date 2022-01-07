
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvlist_t ;
typedef int lua_State ;
struct TYPE_4__ {char const* ddsa_name; char const* ddha_name; int member_0; int ddsa_defer; } ;
typedef TYPE_1__ dsl_destroy_snapshot_arg_t ;
typedef TYPE_1__ dsl_destroy_head_arg_t ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int dsl_destroy_head_check ;
 int dsl_destroy_head_sync ;
 int dsl_destroy_snapshot_check ;
 int dsl_destroy_snapshot_sync ;
 int luaL_error (int *,char*,char const*) ;
 int lua_isnil (int *,int) ;
 int lua_toboolean (int *,int) ;
 char* lua_tostring (int *,int) ;
 int * strchr (char const*,char) ;
 int zcp_sync_task (int *,int ,int ,TYPE_1__*,scalar_t__,char const*) ;

__attribute__((used)) static int
zcp_synctask_destroy(lua_State *state, boolean_t sync, nvlist_t *err_details)
{
 int err;
 const char *dsname = lua_tostring(state, 1);

 boolean_t issnap = (strchr(dsname, '@') != ((void*)0));

 if (!issnap && !lua_isnil(state, 2)) {
  return (luaL_error(state,
      "'deferred' kwarg only supported for snapshots: %s",
      dsname));
 }

 if (issnap) {
  dsl_destroy_snapshot_arg_t ddsa = { 0 };
  ddsa.ddsa_name = dsname;
  if (!lua_isnil(state, 2)) {
   ddsa.ddsa_defer = lua_toboolean(state, 2);
  } else {
   ddsa.ddsa_defer = B_FALSE;
  }

  err = zcp_sync_task(state, dsl_destroy_snapshot_check,
      dsl_destroy_snapshot_sync, &ddsa, sync, dsname);
 } else {
  dsl_destroy_head_arg_t ddha = { 0 };
  ddha.ddha_name = dsname;

  err = zcp_sync_task(state, dsl_destroy_head_check,
      dsl_destroy_head_sync, &ddha, sync, dsname);
 }

 return (err);
}
