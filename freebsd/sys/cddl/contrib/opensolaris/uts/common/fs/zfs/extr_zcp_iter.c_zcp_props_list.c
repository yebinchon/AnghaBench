
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int objset_t ;
typedef int nvlist_t ;
typedef int lua_State ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int * zri_pool; } ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int dmu_objset_from_ds (int *,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_prop_get_all (int *,int **) ;
 int luaL_getmetatable (int *,int ) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushcclosure (int *,int *,int) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_setmetatable (int *,int) ;
 char* lua_tostring (int *,int) ;
 int * zcp_dataset_hold (int *,int *,char const*,int ) ;
 int zcp_props_iter ;
 TYPE_2__ zcp_props_list_info ;
 TYPE_1__* zcp_run_info (int *) ;

__attribute__((used)) static int
zcp_props_list(lua_State *state)
{
 const char *dsname = lua_tostring(state, 1);
 dsl_pool_t *dp = zcp_run_info(state)->zri_pool;
 objset_t *os;
 nvlist_t **props = lua_newuserdata(state, sizeof (nvlist_t *));

 dsl_dataset_t *ds = zcp_dataset_hold(state, dp, dsname, FTAG);
 if (ds == ((void*)0))
  return (1);
 VERIFY0(dmu_objset_from_ds(ds, &os));
 VERIFY0(dsl_prop_get_all(os, props));
 dsl_dataset_rele(ds, FTAG);




 luaL_getmetatable(state, zcp_props_list_info.name);
 (void) lua_setmetatable(state, -2);

 lua_pushlightuserdata(state, ((void*)0));
 lua_pushcclosure(state, &zcp_props_iter, 2);
 return (1);
}
