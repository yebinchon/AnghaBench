
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ l_mem ;
struct TYPE_4__ {int nuse; int size; } ;
struct TYPE_5__ {scalar_t__ gckind; scalar_t__ GCdebt; int GCestimate; TYPE_1__ strt; } ;
typedef TYPE_2__ global_State ;


 scalar_t__ KGC_EMERGENCY ;
 int luaS_resize (int *,int) ;

__attribute__((used)) static void checkSizes (lua_State *L, global_State *g) {
  if (g->gckind != KGC_EMERGENCY) {
    l_mem olddebt = g->GCdebt;
    if (g->strt.nuse < g->strt.size / 4)
      luaS_resize(L, g->strt.size / 2);
    g->GCestimate += g->GCdebt - olddebt;
  }
}
