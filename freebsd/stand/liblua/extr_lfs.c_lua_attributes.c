
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int lua_State ;
struct TYPE_3__ {int (* push ) (int *,struct stat*) ;int name; } ;


 int EINVAL ;
 int errno ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushfstring (int *,char*,...) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawset (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tostring (int *,int) ;
 TYPE_1__* members ;
 size_t nitems (TYPE_1__*) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strerror (int ) ;
 int stub1 (int *,struct stat*) ;
 int stub2 (int *,struct stat*) ;

__attribute__((used)) static int
lua_attributes(lua_State *L)
{
 struct stat sb;
 const char *path, *member;
 size_t i;
 int rc;

 path = luaL_checkstring(L, 1);
 if (path == ((void*)0)) {
  lua_pushnil(L);
  lua_pushfstring(L, "cannot convert first argument to string");
  lua_pushinteger(L, EINVAL);
  return 3;
 }

 rc = stat(path, &sb);
 if (rc != 0) {
  lua_pushnil(L);
  lua_pushfstring(L,
      "cannot obtain information from file '%s': %s", path,
      strerror(errno));
  lua_pushinteger(L, errno);
  return 3;
 }

 if (lua_isstring(L, 2)) {
  member = lua_tostring(L, 2);
  for (i = 0; i < nitems(members); i++) {
   if (strcmp(members[i].name, member) != 0)
    continue;

   members[i].push(L, &sb);
   return 1;
  }
  return luaL_error(L, "invalid attribute name '%s'", member);
 }


 lua_settop(L, 2);
 if (!lua_istable(L, 2))
  lua_newtable(L);


 for (i = 0; i < nitems(members); i++) {
  lua_pushstring(L, members[i].name);
  members[i].push(L, &sb);
  lua_rawset(L, -3);
 }
 return 1;
}
