
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int blocks_modified; scalar_t__ space_check; int (* func ) (int *,int ,int *) ;int kwargs; int pargs; int name; } ;
typedef TYPE_1__ zcp_synctask_info_t ;
struct TYPE_9__ {scalar_t__ zri_space_used; TYPE_3__* zri_pool; } ;
typedef TYPE_2__ zcp_run_info_t ;
typedef int zcp_cleanup_t ;
typedef int zcp_cleanup_handler_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int lua_State ;
typedef int lua_Number ;
struct TYPE_10__ {int dp_root_dir; } ;
typedef TYPE_3__ dsl_pool_t ;
typedef int boolean_t ;
struct TYPE_11__ {scalar_t__ dd_used_bytes; } ;


 int DST_AVG_BLKSHIFT ;
 int ENOSPC ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFS_SPACE_CHECK_NONE ;
 TYPE_7__* dsl_dir_phys (int ) ;
 scalar_t__ dsl_pool_unreserved_space (TYPE_3__*,scalar_t__) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 scalar_t__ fnvlist_num_pairs (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_toboolean (int *,int ) ;
 TYPE_1__* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int stub1 (int *,int ,int *) ;
 int zcp_deregister_cleanup (int *,int *) ;
 int zcp_nvlist_to_lua (int *,int *,int *,int ) ;
 int zcp_parse_args (int *,int ,int ,int ) ;
 int * zcp_register_cleanup (int *,int *,int *) ;
 TYPE_2__* zcp_run_info (int *) ;

__attribute__((used)) static int
zcp_synctask_wrapper(lua_State *state)
{
 int err;
 zcp_cleanup_handler_t *zch;
 int num_ret = 1;
 nvlist_t *err_details = fnvlist_alloc();





 zch = zcp_register_cleanup(state,
     (zcp_cleanup_t *)&fnvlist_free, err_details);

 zcp_synctask_info_t *info = lua_touserdata(state, lua_upvalueindex(1));
 boolean_t sync = lua_toboolean(state, lua_upvalueindex(2));

 zcp_run_info_t *ri = zcp_run_info(state);
 dsl_pool_t *dp = ri->zri_pool;


 uint64_t funcspace = (info->blocks_modified << DST_AVG_BLKSHIFT) * 3;

 zcp_parse_args(state, info->name, info->pargs, info->kwargs);

 err = 0;
 if (info->space_check != ZFS_SPACE_CHECK_NONE) {
  uint64_t quota = dsl_pool_unreserved_space(dp,
      info->space_check);
  uint64_t used = dsl_dir_phys(dp->dp_root_dir)->dd_used_bytes +
      ri->zri_space_used;

  if (used + funcspace > quota) {
   err = SET_ERROR(ENOSPC);
  }
 }

 if (err == 0) {
  err = info->func(state, sync, err_details);
 }

 if (err == 0) {
  ri->zri_space_used += funcspace;
 }

 lua_pushnumber(state, (lua_Number)err);
 if (fnvlist_num_pairs(err_details) > 0) {
  (void) zcp_nvlist_to_lua(state, err_details, ((void*)0), 0);
  num_ret++;
 }

 zcp_deregister_cleanup(state, zch);
 fnvlist_free(err_details);

 return (num_ret);
}
