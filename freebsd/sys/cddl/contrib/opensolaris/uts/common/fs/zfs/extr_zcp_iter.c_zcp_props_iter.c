
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int lua_State ;


 int ZPROP_SOURCE ;
 int ZPROP_VALUE ;
 int fnvlist_free (int *) ;
 char* fnvlist_lookup_string (int *,int ) ;
 int * fnvpair_value_nvlist (int *) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_replace (int *,int ) ;
 void* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int zfs_prop_user (char*) ;

__attribute__((used)) static int
zcp_props_iter(lua_State *state)
{
 char *source, *val;
 nvlist_t *nvprop;
 nvlist_t **props = lua_touserdata(state, lua_upvalueindex(1));
 nvpair_t *pair = lua_touserdata(state, lua_upvalueindex(2));

 do {
  pair = nvlist_next_nvpair(*props, pair);
  if (pair == ((void*)0)) {
   fnvlist_free(*props);
   *props = ((void*)0);
   return (0);
  }
 } while (!zfs_prop_user(nvpair_name(pair)));

 lua_pushlightuserdata(state, pair);
 lua_replace(state, lua_upvalueindex(2));

 nvprop = fnvpair_value_nvlist(pair);
 val = fnvlist_lookup_string(nvprop, ZPROP_VALUE);
 source = fnvlist_lookup_string(nvprop, ZPROP_SOURCE);

 (void) lua_pushstring(state, nvpair_name(pair));
 (void) lua_pushstring(state, val);
 (void) lua_pushstring(state, source);
 return (3);
}
