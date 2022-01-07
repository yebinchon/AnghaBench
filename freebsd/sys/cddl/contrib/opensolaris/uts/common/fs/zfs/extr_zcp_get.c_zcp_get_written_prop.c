
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lua_State ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_hold (int *,char*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dataset_space_written (int *,int *,int *,int *,int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,char const*) ;
 int parse_written_prop (char const*,char const*,char*) ;
 int * zcp_dataset_hold (int *,int *,char const*,int ) ;
 int zcp_dataset_hold_error (int *,int *,char*,int) ;
 int zcp_handle_error (int *,char const*,char*,int) ;

__attribute__((used)) static int
zcp_get_written_prop(lua_State *state, dsl_pool_t *dp,
    const char *dataset_name, const char *prop_name)
{
 char snap_name[ZFS_MAX_DATASET_NAME_LEN];
 uint64_t used, comp, uncomp;
 dsl_dataset_t *old;
 int error = 0;

 parse_written_prop(dataset_name, prop_name, snap_name);
 dsl_dataset_t *new = zcp_dataset_hold(state, dp, dataset_name, FTAG);
 if (new == ((void*)0))
  return (1);

 error = dsl_dataset_hold(dp, snap_name, FTAG, &old);
 if (error != 0) {
  dsl_dataset_rele(new, FTAG);
  return (zcp_dataset_hold_error(state, dp, snap_name,
      error));
 }
 error = dsl_dataset_space_written(old, new,
     &used, &comp, &uncomp);

 dsl_dataset_rele(old, FTAG);
 dsl_dataset_rele(new, FTAG);

 if (error != 0) {
  return (zcp_handle_error(state, dataset_name,
      snap_name, error));
 }
 (void) lua_pushnumber(state, used);
 (void) lua_pushstring(state, dataset_name);
 return (2);
}
