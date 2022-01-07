
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_schema_error {char const* msg; } ;
typedef int lua_State ;


 scalar_t__ LUA_TSTRING ;
 scalar_t__ LUA_TTABLE ;
 scalar_t__ LUA_TUSERDATA ;
 scalar_t__ UCL_OBJECT ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushfstring (int *,char*,char const*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int * lua_ucl_object_get (int *,int) ;
 int lua_ucl_push_opaque (int *,int *) ;
 int * ucl_object_lookup_path_char (int *,char const*,char) ;
 scalar_t__ ucl_object_type (int *) ;
 int ucl_object_validate_root_ext (int const*,int *,int *,int *,struct ucl_schema_error*) ;

__attribute__((used)) static int
lua_ucl_object_validate (lua_State *L)
{
 ucl_object_t *obj, *schema, *ext_refs = ((void*)0);
 const ucl_object_t *schema_elt;
 bool res = 0;
 struct ucl_schema_error err;
 const char *path = ((void*)0);

 obj = lua_ucl_object_get (L, 1);
 schema = lua_ucl_object_get (L, 2);

 if (schema && obj && ucl_object_type (schema) == UCL_OBJECT) {
  if (lua_gettop (L) > 2) {
   if (lua_type (L, 3) == LUA_TSTRING) {
    path = lua_tostring (L, 3);
    if (path[0] == '#') {
     path++;
    }
   }
   else if (lua_type (L, 3) == LUA_TUSERDATA || lua_type (L, 3) ==
      LUA_TTABLE) {

    ext_refs = lua_ucl_object_get (L, 3);
   }

   if (lua_gettop (L) > 3) {
    if (lua_type (L, 4) == LUA_TUSERDATA || lua_type (L, 4) ==
      LUA_TTABLE) {

     ext_refs = lua_ucl_object_get (L, 4);
    }
   }
  }

  if (path) {
   schema_elt = ucl_object_lookup_path_char (schema, path, '/');
  }
  else {

   schema_elt = schema;
  }

  if (schema_elt) {
   res = ucl_object_validate_root_ext (schema_elt, obj, schema,
     ext_refs, &err);

   if (res) {
    lua_pushboolean (L, res);
    lua_pushnil (L);

    if (ext_refs) {
     lua_ucl_push_opaque (L, ext_refs);
    }
   }
   else {
    lua_pushboolean (L, res);
    lua_pushfstring (L, "validation error: %s", err.msg);

    if (ext_refs) {
     lua_ucl_push_opaque (L, ext_refs);
    }
   }
  }
  else {
   lua_pushboolean (L, res);

   lua_pushfstring (L, "cannot find the requested path: %s", path);

   if (ext_refs) {
    lua_ucl_push_opaque (L, ext_refs);
   }
  }
 }
 else {
  lua_pushboolean (L, res);
  lua_pushstring (L, "invalid object or schema");
 }

 if (ext_refs) {
  return 3;
 }

 return 2;
}
