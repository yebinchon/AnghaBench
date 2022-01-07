
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int global_State ;
typedef int GCObject ;


 int * G (int *) ;
 scalar_t__ isblack (int *) ;
 int isdead (int *,int *) ;
 int issweepphase (int *) ;
 scalar_t__ iswhite (int *) ;
 scalar_t__ keepinvariant (int *) ;
 int lua_assert (int) ;
 int makewhite (int *,int *) ;
 int reallymarkobject (int *,int *) ;

void luaC_barrier_ (lua_State *L, GCObject *o, GCObject *v) {
  global_State *g = G(L);
  lua_assert(isblack(o) && iswhite(v) && !isdead(g, v) && !isdead(g, o));
  if (keepinvariant(g))
    reallymarkobject(g, v);
  else {
    lua_assert(issweepphase(g));
    makewhite(g, o);
  }
}
