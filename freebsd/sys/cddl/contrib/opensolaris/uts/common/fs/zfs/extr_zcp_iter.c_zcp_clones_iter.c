
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_11__ {int za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int lua_State ;
struct TYPE_12__ {int dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_13__ {int ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_15__ {scalar_t__ ds_next_clones_obj; } ;
struct TYPE_14__ {TYPE_2__* zri_pool; } ;


 int ENOENT ;
 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_hold_obj (TYPE_2__*,int ,int ,TYPE_3__**) ;
 TYPE_7__* dsl_dataset_phys (TYPE_3__*) ;
 int dsl_dataset_rele (TYPE_3__*,int ) ;
 int dsl_dir_name (int ,char*) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_replace (int *,int ) ;
 int lua_tonumber (int *,int ) ;
 int lua_upvalueindex (int) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init_serialized (int *,int ,scalar_t__,int ) ;
 int zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_cursor_serialize (int *) ;
 TYPE_4__* zcp_run_info (int *) ;

__attribute__((used)) static int
zcp_clones_iter(lua_State *state)
{
 int err;
 char clonename[ZFS_MAX_DATASET_NAME_LEN];
 uint64_t dsobj = lua_tonumber(state, lua_upvalueindex(1));
 uint64_t cursor = lua_tonumber(state, lua_upvalueindex(2));
 dsl_pool_t *dp = zcp_run_info(state)->zri_pool;
 dsl_dataset_t *ds, *clone;
 zap_attribute_t za;
 zap_cursor_t zc;

 err = dsl_dataset_hold_obj(dp, dsobj, FTAG, &ds);
 if (err == ENOENT) {
  return (0);
 } else if (err != 0) {
  return (luaL_error(state,
      "unexpected error %d from dsl_dataset_hold_obj(dsobj)",
      err));
 }

 if (dsl_dataset_phys(ds)->ds_next_clones_obj == 0) {
  dsl_dataset_rele(ds, FTAG);
  return (0);
 }

 zap_cursor_init_serialized(&zc, dp->dp_meta_objset,
     dsl_dataset_phys(ds)->ds_next_clones_obj, cursor);
 dsl_dataset_rele(ds, FTAG);

 err = zap_cursor_retrieve(&zc, &za);
 if (err != 0) {
  zap_cursor_fini(&zc);
  if (err != ENOENT) {
   return (luaL_error(state,
       "unexpected error %d from zap_cursor_retrieve()",
       err));
  }
  return (0);
 }
 zap_cursor_advance(&zc);
 cursor = zap_cursor_serialize(&zc);
 zap_cursor_fini(&zc);

 err = dsl_dataset_hold_obj(dp, za.za_first_integer, FTAG, &clone);
 if (err != 0) {
  return (luaL_error(state,
      "unexpected error %d from "
      "dsl_dataset_hold_obj(za_first_integer)", err));
 }

 dsl_dir_name(clone->ds_dir, clonename);
 dsl_dataset_rele(clone, FTAG);

 lua_pushnumber(state, cursor);
 lua_replace(state, lua_upvalueindex(2));

 (void) lua_pushstring(state, clonename);
 return (1);
}
