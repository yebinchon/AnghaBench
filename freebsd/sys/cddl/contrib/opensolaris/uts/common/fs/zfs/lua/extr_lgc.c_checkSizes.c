
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int size; scalar_t__ nuse; } ;
struct TYPE_5__ {scalar_t__ gckind; int buff; TYPE_1__ strt; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (int *) ;
 scalar_t__ KGC_EMERGENCY ;
 scalar_t__ cast (int ,int) ;
 int lu_int32 ;
 int luaS_resize (int *,int) ;
 int luaZ_freebuffer (int *,int *) ;

__attribute__((used)) static void checkSizes (lua_State *L) {
  global_State *g = G(L);
  if (g->gckind != KGC_EMERGENCY) {
    int hs = g->strt.size / 2;
    if (g->strt.nuse < cast(lu_int32, hs))
      luaS_resize(L, hs);
    luaZ_freebuffer(L, &g->buff);
  }
}
