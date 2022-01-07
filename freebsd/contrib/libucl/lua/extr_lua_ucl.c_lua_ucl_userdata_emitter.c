
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_lua_funcdata {char const* ret; int L; int idx; } ;


 int LUA_REGISTRYINDEX ;
 int free (char const*) ;
 int lua_pcall (int ,int ,int,int ) ;
 int lua_rawgeti (int ,int ,int ) ;
 int lua_settop (int ,int ) ;
 char* lua_tostring (int ,int) ;
 char const* strdup (char const*) ;

__attribute__((used)) static const char *
lua_ucl_userdata_emitter (void *ud)
{
 struct ucl_lua_funcdata *fd = (struct ucl_lua_funcdata *)ud;
 const char *out = "";

 lua_rawgeti (fd->L, LUA_REGISTRYINDEX, fd->idx);

 lua_pcall (fd->L, 0, 1, 0);
 out = lua_tostring (fd->L, -1);

 if (out != ((void*)0)) {

  if (fd->ret) {
   free (fd->ret);
  }
  fd->ret = strdup (out);
 }

 lua_settop (fd->L, 0);

 return fd->ret;
}
