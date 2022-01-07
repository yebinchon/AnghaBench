
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ GCdebt; int ud; void* (* frealloc ) (int ,void*,size_t,size_t) ;scalar_t__ gcrunning; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int LUA_ERRMEM ;
 int api_check (int *,int,char*) ;
 int luaC_fullgc (int *,int) ;
 int luaD_throw (int *,int ) ;
 int lua_assert (int) ;
 void* stub1 (int ,void*,size_t,size_t) ;
 void* stub2 (int ,void*,size_t,size_t) ;

void *luaM_realloc_ (lua_State *L, void *block, size_t osize, size_t nsize) {
  void *newblock;
  global_State *g = G(L);
  size_t realosize = (block) ? osize : 0;
  lua_assert((realosize == 0) == (block == ((void*)0)));




  newblock = (*g->frealloc)(g->ud, block, osize, nsize);
  if (newblock == ((void*)0) && nsize > 0) {
    api_check(L, nsize > realosize,
                 "realloc cannot fail when shrinking a block");
    if (g->gcrunning) {
      luaC_fullgc(L, 1);
      newblock = (*g->frealloc)(g->ud, block, osize, nsize);
    }
    if (newblock == ((void*)0))
      luaD_throw(L, LUA_ERRMEM);
  }
  lua_assert((nsize == 0) == (newblock == ((void*)0)));
  g->GCdebt = (g->GCdebt + nsize) - realosize;
  return newblock;
}
