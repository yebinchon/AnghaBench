
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * next; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 TYPE_1__* ucl_object_iterate (TYPE_1__ const*,int **,int) ;
 int ucl_object_key (TYPE_1__ const*) ;
 int ucl_object_lua_push_array (int *,TYPE_1__ const*) ;
 int ucl_object_lua_push_element (int *,int ,TYPE_1__ const*) ;

__attribute__((used)) static int
ucl_object_lua_push_object (lua_State *L, const ucl_object_t *obj,
  bool allow_array)
{
 const ucl_object_t *cur;
 ucl_object_iter_t it = ((void*)0);
 int nelt = 0;

 if (allow_array && obj->next != ((void*)0)) {

  return ucl_object_lua_push_array (L, obj);
 }


 while (ucl_object_iterate (obj, &it, 1) != ((void*)0)) {
  nelt ++;
 }

 lua_createtable (L, 0, nelt);
 it = ((void*)0);

 while ((cur = ucl_object_iterate (obj, &it, 1)) != ((void*)0)) {
  ucl_object_lua_push_element (L, ucl_object_key (cur), cur);
 }

 return 1;
}
