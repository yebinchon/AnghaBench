
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_lua_funcdata {struct ucl_lua_funcdata* ret; int idx; int L; } ;


 int LUA_REGISTRYINDEX ;
 int free (struct ucl_lua_funcdata*) ;
 int luaL_unref (int ,int ,int ) ;

__attribute__((used)) static void
lua_ucl_userdata_dtor (void *ud)
{
 struct ucl_lua_funcdata *fd = (struct ucl_lua_funcdata *)ud;

 luaL_unref (fd->L, LUA_REGISTRYINDEX, fd->idx);
 if (fd->ret != ((void*)0)) {
  free (fd->ret);
 }
 free (fd);
}
