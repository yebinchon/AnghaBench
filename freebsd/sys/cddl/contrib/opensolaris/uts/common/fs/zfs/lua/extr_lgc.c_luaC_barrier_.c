
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {scalar_t__ gcstate; } ;
typedef TYPE_1__ global_State ;
struct TYPE_10__ {scalar_t__ tt; } ;
typedef int GCObject ;


 TYPE_1__* G (int *) ;
 scalar_t__ GCSpause ;
 scalar_t__ LUA_TTABLE ;
 TYPE_7__* gch (int *) ;
 scalar_t__ isblack (int *) ;
 int isdead (TYPE_1__*,int *) ;
 int issweepphase (TYPE_1__*) ;
 scalar_t__ iswhite (int *) ;
 scalar_t__ keepinvariantout (TYPE_1__*) ;
 int lua_assert (int) ;
 int makewhite (TYPE_1__*,int *) ;
 int reallymarkobject (TYPE_1__*,int *) ;

void luaC_barrier_ (lua_State *L, GCObject *o, GCObject *v) {
  global_State *g = G(L);
  lua_assert(isblack(o) && iswhite(v) && !isdead(g, v) && !isdead(g, o));
  lua_assert(g->gcstate != GCSpause);
  lua_assert(gch(o)->tt != LUA_TTABLE);
  if (keepinvariantout(g))
    reallymarkobject(g, v);
  else {
    lua_assert(issweepphase(g));
    makewhite(g, o);
  }
}
