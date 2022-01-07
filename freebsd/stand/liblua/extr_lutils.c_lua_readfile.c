
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {size_t size; } ;
typedef TYPE_1__ FILE ;


 size_t fread (char*,int,size_t,TYPE_1__*) ;
 int free (char*) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,size_t) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int lua_pushnil (int *) ;
 scalar_t__ lua_tonumber (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 scalar_t__ malloc (size_t) ;

__attribute__((used)) static int
lua_readfile(lua_State *L)
{
 FILE **f;
 size_t size, r;
 char * buf;

 if (lua_gettop(L) < 1 || lua_gettop(L) > 2) {
  lua_pushnil(L);
  lua_pushinteger(L, 0);
  return 2;
 }

 f = (FILE**)lua_touserdata(L, 1);

 if (f == ((void*)0) || *f == ((void*)0)) {
  lua_pushnil(L);
  lua_pushinteger(L, 0);
  return 2;
 }

 if (lua_gettop(L) == 2)
  size = (size_t)lua_tonumber(L, 2);
 else
  size = (*f)->size;


 buf = (char*)malloc(size);
 r = fread(buf, 1, size, *f);
 lua_pushlstring(L, buf, r);
 free(buf);
 lua_pushinteger(L, r);

 return 2;
}
