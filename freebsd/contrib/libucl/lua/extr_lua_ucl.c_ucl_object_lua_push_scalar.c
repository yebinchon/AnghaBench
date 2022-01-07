
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ud; } ;
struct TYPE_10__ {int type; TYPE_1__ value; int * next; } ;
typedef TYPE_2__ ucl_object_t ;
struct ucl_lua_funcdata {int idx; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;







 int lua_getfield (int *,int ,char*) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawgeti (int *,int ,int ) ;
 int ucl_obj_toboolean (TYPE_2__ const*) ;
 int ucl_obj_todouble (TYPE_2__ const*) ;
 int ucl_obj_toint (TYPE_2__ const*) ;
 int ucl_obj_tostring (TYPE_2__ const*) ;
 int ucl_object_lua_push_array (int *,TYPE_2__ const*) ;

__attribute__((used)) static int
ucl_object_lua_push_scalar (lua_State *L, const ucl_object_t *obj,
  bool allow_array)
{
 struct ucl_lua_funcdata *fd;

 if (allow_array && obj->next != ((void*)0)) {

  return ucl_object_lua_push_array (L, obj);
 }

 switch (obj->type) {
 case 134:
  lua_pushboolean (L, ucl_obj_toboolean (obj));
  break;
 case 130:
  lua_pushstring (L, ucl_obj_tostring (obj));
  break;
 case 132:



  lua_pushnumber (L, ucl_obj_toint (obj));

  break;
 case 133:
 case 129:
  lua_pushnumber (L, ucl_obj_todouble (obj));
  break;
 case 131:
  lua_getfield (L, LUA_REGISTRYINDEX, "ucl.null");
  break;
 case 128:
  fd = (struct ucl_lua_funcdata *)obj->value.ud;
  lua_rawgeti (L, LUA_REGISTRYINDEX, fd->idx);
  break;
 default:
  lua_pushnil (L);
  break;
 }

 return 1;
}
