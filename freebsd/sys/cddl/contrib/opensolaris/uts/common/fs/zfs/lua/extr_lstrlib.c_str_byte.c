
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_checkstack (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int luaL_optinteger (int *,int,size_t) ;
 int lua_pushinteger (int *,int ) ;
 size_t posrelat (int ,size_t) ;
 int uchar (char const) ;

__attribute__((used)) static int str_byte (lua_State *L) {
  size_t l;
  const char *s = luaL_checklstring(L, 1, &l);
  size_t posi = posrelat(luaL_optinteger(L, 2, 1), l);
  size_t pose = posrelat(luaL_optinteger(L, 3, posi), l);
  int n, i;
  if (posi < 1) posi = 1;
  if (pose > l) pose = l;
  if (posi > pose) return 0;
  n = (int)(pose - posi + 1);
  if (posi + n <= pose)
    return luaL_error(L, "string slice too long");
  luaL_checkstack(L, n, "string slice too long");
  for (i=0; i<n; i++)
    lua_pushinteger(L, uchar(s[posi+i-1]));
  return n;
}
