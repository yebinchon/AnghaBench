
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
struct TYPE_5__ {scalar_t__ gcstate; scalar_t__ GCestimate; int gcmajorinc; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCSpause ;
 scalar_t__ GCSpropagate ;
 int bitmask (int ) ;
 int gettotalbytes (TYPE_1__*) ;
 int luaC_fullgc (int *,int ) ;
 int luaC_runtilstate (int *,int ) ;
 int lua_assert (int) ;
 int setpause (TYPE_1__*,int) ;

__attribute__((used)) static void generationalcollection (lua_State *L) {
  global_State *g = G(L);
  lua_assert(g->gcstate == GCSpropagate);
  if (g->GCestimate == 0) {
    luaC_fullgc(L, 0);
    g->GCestimate = gettotalbytes(g);
  }
  else {
    lu_mem estimate = g->GCestimate;
    luaC_runtilstate(L, bitmask(GCSpause));
    g->gcstate = GCSpropagate;
    if (gettotalbytes(g) > (estimate / 100) * g->gcmajorinc)
      g->GCestimate = 0;
    else
      g->GCestimate = estimate;

  }
  setpause(g, gettotalbytes(g));
  lua_assert(g->gcstate == GCSpropagate);
}
