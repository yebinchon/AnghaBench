
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;


 int EIO ;
 int ENOENT ;
 int EXDEV ;
 int luaL_error (int *,char*,...) ;
 int spa_name (int ) ;
 int zcp_argerror (int *,int,char*,char const*,...) ;

int
zcp_dataset_hold_error(lua_State *state, dsl_pool_t *dp, const char *dsname,
    int error)
{
 if (error == ENOENT) {
  (void) zcp_argerror(state, 1, "no such dataset '%s'", dsname);
  return (0);
 } else if (error == EXDEV) {
  (void) zcp_argerror(state, 1,
      "dataset '%s' is not in the target pool '%s'",
      dsname, spa_name(dp->dp_spa));
  return (0);
 } else if (error == EIO) {
  (void) luaL_error(state,
      "I/O error while accessing dataset '%s'", dsname);
  return (0);
 } else if (error != 0) {
  (void) luaL_error(state,
      "unexpected error %d while accessing dataset '%s'",
      error, dsname);
  return (0);
 }
 return (0);
}
