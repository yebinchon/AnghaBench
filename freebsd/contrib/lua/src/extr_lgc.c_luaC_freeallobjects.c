
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ nuse; } ;
struct TYPE_6__ {TYPE_1__ strt; int * fixedgc; int * allgc; int * finobj; int gckind; int currentwhite; int * tobefnz; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (int *) ;
 int KGC_NORMAL ;
 int WHITEBITS ;
 int callallpendingfinalizers (int *) ;
 int lua_assert (int) ;
 int separatetobefnz (TYPE_2__*,int) ;
 int sweepwholelist (int *,int **) ;

void luaC_freeallobjects (lua_State *L) {
  global_State *g = G(L);
  separatetobefnz(g, 1);
  lua_assert(g->finobj == ((void*)0));
  callallpendingfinalizers(L);
  lua_assert(g->tobefnz == ((void*)0));
  g->currentwhite = WHITEBITS;
  g->gckind = KGC_NORMAL;
  sweepwholelist(L, &g->finobj);
  sweepwholelist(L, &g->allgc);
  sweepwholelist(L, &g->fixedgc);
  lua_assert(g->strt.nuse == 0);
}
