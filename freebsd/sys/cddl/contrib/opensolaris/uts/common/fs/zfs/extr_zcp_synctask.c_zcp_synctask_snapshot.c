
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int zri_cred; TYPE_1__* zri_pool; } ;
typedef TYPE_2__ zcp_run_info_t ;
typedef int zcp_cleanup_t ;
typedef int zcp_cleanup_handler_t ;
typedef int nvlist_t ;
typedef int lua_State ;
struct TYPE_8__ {int ddsa_snaps; int ddsa_cr; int * ddsa_props; int * ddsa_errors; int member_0; } ;
typedef TYPE_3__ dsl_dataset_snapshot_arg_t ;
typedef int boolean_t ;
struct TYPE_6__ {int dp_spa; } ;


 int ENOTSUP ;
 scalar_t__ SPA_VERSION_FAST_SNAP ;
 int dsl_dataset_snapshot_check ;
 int dsl_dataset_snapshot_sync ;
 int fnvlist_add_boolean (int ,char const*) ;
 int fnvlist_alloc () ;
 int fnvlist_free (int ) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ spa_version (int ) ;
 int zcp_deregister_cleanup (int *,int *) ;
 int * zcp_register_cleanup (int *,int *,int ) ;
 TYPE_2__* zcp_run_info (int *) ;
 int zcp_sync_task (int *,int ,int ,TYPE_3__*,int ,char const*) ;

__attribute__((used)) static int
zcp_synctask_snapshot(lua_State *state, boolean_t sync, nvlist_t *err_details)
{
 int err;
 dsl_dataset_snapshot_arg_t ddsa = { 0 };
 const char *dsname = lua_tostring(state, 1);
 zcp_run_info_t *ri = zcp_run_info(state);






 if (spa_version(ri->zri_pool->dp_spa) < SPA_VERSION_FAST_SNAP) {
  return (ENOTSUP);
 }





 ddsa.ddsa_errors = ((void*)0);
 ddsa.ddsa_props = ((void*)0);
 ddsa.ddsa_cr = ri->zri_cred;
 ddsa.ddsa_snaps = fnvlist_alloc();
 fnvlist_add_boolean(ddsa.ddsa_snaps, dsname);

 zcp_cleanup_handler_t *zch = zcp_register_cleanup(state,
     (zcp_cleanup_t *)&fnvlist_free, ddsa.ddsa_snaps);

 err = zcp_sync_task(state, dsl_dataset_snapshot_check,
     dsl_dataset_snapshot_sync, &ddsa, sync, dsname);

 zcp_deregister_cleanup(state, zch);
 fnvlist_free(ddsa.ddsa_snaps);

 return (err);
}
