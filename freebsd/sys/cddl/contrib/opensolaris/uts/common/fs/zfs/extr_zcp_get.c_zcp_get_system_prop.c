
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int lua_State ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int ENOENT ;
 int FTAG ;
 int dsl_dataset_rele (int *,int ) ;
 int get_special_prop (int *,int *,char const*,int ) ;
 int get_zap_prop (int *,int *,int ) ;
 int prop_valid_for_ds (int *,int ) ;
 int * zcp_dataset_hold (int *,int *,char const*,int ) ;
 int zcp_handle_error (int *,char const*,char const*,int) ;
 char* zfs_prop_to_name (int ) ;

__attribute__((used)) static int
zcp_get_system_prop(lua_State *state, dsl_pool_t *dp, const char *dataset_name,
    zfs_prop_t zfs_prop)
{
 int error;





 dsl_dataset_t *ds = zcp_dataset_hold(state, dp, dataset_name, FTAG);
 if (ds == ((void*)0))
  return (1);


 const char *prop_name = zfs_prop_to_name(zfs_prop);
 if (!prop_valid_for_ds(ds, zfs_prop)) {
  dsl_dataset_rele(ds, FTAG);
  return (0);
 }


 error = get_special_prop(state, ds, dataset_name, zfs_prop);
 if (error == 0) {
  dsl_dataset_rele(ds, FTAG);

  return (2);
 }
 if (error != ENOENT) {
  dsl_dataset_rele(ds, FTAG);
  return (zcp_handle_error(state, dataset_name,
      prop_name, error));
 }


 error = get_zap_prop(state, ds, zfs_prop);
 dsl_dataset_rele(ds, FTAG);
 if (error != 0) {
  return (zcp_handle_error(state, dataset_name,
      prop_name, error));
 }

 return (2);
}
