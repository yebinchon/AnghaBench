
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_prop_t ;
typedef int lua_State ;


 scalar_t__ ZFS_PROP_VERSION ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ zfs_prop_readonly (scalar_t__) ;

__attribute__((used)) static void
get_prop_src(lua_State *state, const char *setpoint, zfs_prop_t prop)
{
 if (zfs_prop_readonly(prop) || (prop == ZFS_PROP_VERSION)) {
  lua_pushnil(state);
 } else {
  const char *src;
  if (strcmp("", setpoint) == 0) {
   src = "default";
  } else {
   src = setpoint;
  }
  (void) lua_pushstring(state, src);
 }
}
