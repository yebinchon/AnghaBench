
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ lu_mem ;
typedef int l_mem ;
struct TYPE_5__ {int GCdebt; int gcstepmul; scalar_t__ gcstate; int GCestimate; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCSTEPSIZE ;
 scalar_t__ GCSpause ;
 int MAX_LMEM ;
 int STEPMULADJ ;
 int luaE_setdebt (TYPE_1__*,int) ;
 int setpause (TYPE_1__*,int ) ;
 scalar_t__ singlestep (int *) ;

__attribute__((used)) static void incstep (lua_State *L) {
  global_State *g = G(L);
  l_mem debt = g->GCdebt;
  int stepmul = g->gcstepmul;
  if (stepmul < 40) stepmul = 40;

  debt = (debt / STEPMULADJ) + 1;
  debt = (debt < MAX_LMEM / stepmul) ? debt * stepmul : MAX_LMEM;
  do {
    lu_mem work = singlestep(L);
    debt -= work;
  } while (debt > -GCSTEPSIZE && g->gcstate != GCSpause);
  if (g->gcstate == GCSpause)
    setpause(g, g->GCestimate);
  else {
    debt = (debt / stepmul) * STEPMULADJ;
    luaE_setdebt(g, debt);
  }
}
