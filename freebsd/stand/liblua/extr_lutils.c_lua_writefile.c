
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int EINVAL ;
 int errno ;
 size_t fwrite (char const*,int,size_t,int *) ;
 int luaL_fileresult (int *,int ,int *) ;
 int lua_gettop (int *) ;
 int lua_isstring (int *,int) ;
 int lua_pushinteger (int *,size_t) ;
 char* lua_tolstring (int *,int,size_t*) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static int
lua_writefile(lua_State *L)
{
 FILE **f;
 const char *buf;
 int i, nargs;
 size_t bufsz, w, wrsz;

 buf = ((void*)0);
 bufsz = 0;
 w = 0;
 wrsz = 0;
 nargs = lua_gettop(L);
 if (nargs < 2) {
  errno = EINVAL;
  return luaL_fileresult(L, 0, ((void*)0));
 }

 f = (FILE**)lua_touserdata(L, 1);

 if (f == ((void*)0) || *f == ((void*)0)) {
  errno = EINVAL;
  return luaL_fileresult(L, 0, ((void*)0));
 }


 for (i = 0; i < nargs - 1; i++) {





  if (!lua_isstring(L, i + 2)) {
   errno = EINVAL;
   return luaL_fileresult(L, 0, ((void*)0));
  }
 }
 for (i = 0; i < nargs - 1; i++) {

  buf = lua_tolstring(L, i + 2, &bufsz);
  wrsz = fwrite(buf, 1, bufsz, *f);
  if (wrsz < bufsz)
   return luaL_fileresult(L, 0, ((void*)0));
  w += wrsz;
 }
 lua_pushinteger(L, w);
 return 1;
}
