
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int FTAG ;
 int KM_SLEEP ;
 int ZAP_MAXVALUELEN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_prop_get_ds (int *,char const*,int,int ,char*,char*) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int lua_pushstring (int *,char*) ;
 int * zcp_dataset_hold (int *,int *,char const*,int ) ;
 int zcp_handle_error (int *,char const*,char const*,int) ;

__attribute__((used)) static int
zcp_get_user_prop(lua_State *state, dsl_pool_t *dp, const char *dataset_name,
    const char *property_name)
{
 int error;
 char *buf;
 char setpoint[ZFS_MAX_DATASET_NAME_LEN];





 dsl_dataset_t *ds = zcp_dataset_hold(state, dp, dataset_name, FTAG);
 if (ds == ((void*)0))
  return (1);

 buf = kmem_alloc(ZAP_MAXVALUELEN, KM_SLEEP);
 error = dsl_prop_get_ds(ds, property_name, 1, ZAP_MAXVALUELEN,
     buf, setpoint);
 dsl_dataset_rele(ds, FTAG);

 if (error != 0) {
  kmem_free(buf, ZAP_MAXVALUELEN);
  return (zcp_handle_error(state, dataset_name, property_name,
      error));
 }
 (void) lua_pushstring(state, buf);
 (void) lua_pushstring(state, setpoint);
 kmem_free(buf, ZAP_MAXVALUELEN);
 return (2);
}
