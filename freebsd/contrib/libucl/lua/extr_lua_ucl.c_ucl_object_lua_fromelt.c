
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_lua_funcdata {int idx; int * ret; int * L; } ;
typedef int lua_State ;
typedef double int64_t ;


 int LUA_REGISTRYINDEX ;







 int UCL_NULL ;
 int luaL_getmetafield (int *,int,char*) ;
 int luaL_ref (int *,int ) ;
 int lua_call (int *,int,int) ;
 int lua_insert (int *,int) ;
 int lua_isfunction (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_toboolean (int *,int) ;
 double lua_tonumber (int *,int) ;
 int lua_topointer (int *,int) ;
 int lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 int lua_ucl_userdata_dtor ;
 int lua_ucl_userdata_emitter ;
 struct ucl_lua_funcdata* malloc (int) ;
 int ucl_null ;
 int * ucl_object_frombool (int ) ;
 int * ucl_object_fromdouble (double) ;
 int * ucl_object_fromint (double) ;
 int * ucl_object_fromstring_common (int ,int ,int ) ;
 int * ucl_object_lua_fromtable (int *,int) ;
 int * ucl_object_new_userdata (int ,int ,void*) ;
 int * ucl_object_typed_new (int ) ;

__attribute__((used)) static ucl_object_t *
ucl_object_lua_fromelt (lua_State *L, int idx)
{
 int type;
 double num;
 ucl_object_t *obj = ((void*)0);
 struct ucl_lua_funcdata *fd;

 type = lua_type (L, idx);

 switch (type) {
 case 131:
  obj = ucl_object_fromstring_common (lua_tostring (L, idx), 0, 0);
  break;
 case 132:
  num = lua_tonumber (L, idx);
  if (num == (int64_t)num) {
   obj = ucl_object_fromint (num);
  }
  else {
   obj = ucl_object_fromdouble (num);
  }
  break;
 case 134:
  obj = ucl_object_frombool (lua_toboolean (L, idx));
  break;
 case 128:
  if (lua_topointer (L, idx) == ucl_null) {
   obj = ucl_object_typed_new (UCL_NULL);
  }
  break;
 case 130:
 case 133:
 case 129:
  if (luaL_getmetafield (L, idx, "__gen_ucl")) {
   if (lua_isfunction (L, -1)) {
    lua_settop (L, 3);
    lua_insert (L, 1);
    lua_insert (L, 2);
    lua_call(L, 2, 1);
    obj = ucl_object_lua_fromelt (L, 1);
   }
   lua_pop (L, 2);
  }
  else {
   if (type == 130) {
    obj = ucl_object_lua_fromtable (L, idx);
   }
   else if (type == 133) {
    fd = malloc (sizeof (*fd));
    if (fd != ((void*)0)) {
     lua_pushvalue (L, idx);
     fd->L = L;
     fd->ret = ((void*)0);
     fd->idx = luaL_ref (L, LUA_REGISTRYINDEX);

     obj = ucl_object_new_userdata (lua_ucl_userdata_dtor,
       lua_ucl_userdata_emitter, (void *)fd);
    }
   }
  }
  break;
 }

 return obj;
}
