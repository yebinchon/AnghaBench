
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int lua_State ;


 int INT_MIN ;
 scalar_t__ LUA_TNUMBER ;
 int UCL_ARRAY ;
 int UCL_OBJECT ;
 int lua_gettable (int *,int) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 char* lua_tolstring (int *,int,size_t*) ;
 double lua_tonumber (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int ucl_array_append (int *,int *) ;
 int ucl_object_insert_key (int *,int *,char const*,size_t,int) ;
 int * ucl_object_lua_fromelt (int *,int) ;
 int * ucl_object_typed_new (int ) ;

__attribute__((used)) static ucl_object_t *
ucl_object_lua_fromtable (lua_State *L, int idx)
{
 ucl_object_t *obj, *top = ((void*)0);
 size_t keylen;
 const char *k;
 bool is_array = 1;
 int max = INT_MIN;

 if (idx < 0) {

  idx = lua_gettop (L) + idx + 1;
 }

 lua_pushnil (L);
 while (lua_next (L, idx) != 0) {
  if (lua_type (L, -2) == LUA_TNUMBER) {
   double num = lua_tonumber (L, -2);
   if (num == (int)num) {
    if (num > max) {
     max = num;
    }
   }
   else {

    lua_pop (L, 2);
    is_array = 0;
    break;
   }
  }
  else {

   lua_pop (L, 2);
   is_array = 0;
   break;
  }
  lua_pop (L, 1);
 }


 if (is_array) {
  int i;

  top = ucl_object_typed_new (UCL_ARRAY);
  for (i = 1; i <= max; i ++) {
   lua_pushinteger (L, i);
   lua_gettable (L, idx);
   obj = ucl_object_lua_fromelt (L, lua_gettop (L));
   if (obj != ((void*)0)) {
    ucl_array_append (top, obj);
   }
   lua_pop (L, 1);
  }
 }
 else {
  lua_pushnil (L);
  top = ucl_object_typed_new (UCL_OBJECT);
  while (lua_next (L, idx) != 0) {

   k = lua_tolstring (L, -2, &keylen);
   obj = ucl_object_lua_fromelt (L, lua_gettop (L));

   if (obj != ((void*)0)) {
    ucl_object_insert_key (top, obj, k, keylen, 1);
   }
   lua_pop (L, 1);
  }
 }

 return top;
}
