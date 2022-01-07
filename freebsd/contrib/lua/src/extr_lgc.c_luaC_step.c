
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ lu_mem ;
typedef int l_mem ;
struct TYPE_6__ {scalar_t__ gcstate; int gcstepmul; int gcrunning; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCSTEPSIZE ;
 scalar_t__ GCSpause ;
 int STEPMULADJ ;
 int getdebt (TYPE_1__*) ;
 int luaE_setdebt (TYPE_1__*,int) ;
 int runafewfinalizers (int *) ;
 int setpause (TYPE_1__*) ;
 scalar_t__ singlestep (int *) ;

void luaC_step (lua_State *L) {
  global_State *g = G(L);
  l_mem debt = getdebt(g);
  if (!g->gcrunning) {
    luaE_setdebt(g, -GCSTEPSIZE * 10);
    return;
  }
  do {
    lu_mem work = singlestep(L);
    debt -= work;
  } while (debt > -GCSTEPSIZE && g->gcstate != GCSpause);
  if (g->gcstate == GCSpause)
    setpause(g);
  else {
    debt = (debt / g->gcstepmul) * STEPMULADJ;
    luaE_setdebt(g, debt);
    runafewfinalizers(L);
  }
}
