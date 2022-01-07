
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int * grayagain; } ;
typedef TYPE_1__ global_State ;
struct TYPE_8__ {scalar_t__ tt; } ;
struct TYPE_7__ {int * gclist; } ;
typedef int GCObject ;


 TYPE_1__* G (int *) ;
 scalar_t__ LUA_TTABLE ;
 int black2gray (int *) ;
 TYPE_4__* gch (int *) ;
 TYPE_3__* gco2t (int *) ;
 scalar_t__ isblack (int *) ;
 int isdead (TYPE_1__*,int *) ;
 int lua_assert (int) ;

void luaC_barrierback_ (lua_State *L, GCObject *o) {
  global_State *g = G(L);
  lua_assert(isblack(o) && !isdead(g, o) && gch(o)->tt == LUA_TTABLE);
  black2gray(o);
  gco2t(o)->gclist = g->grayagain;
  g->grayagain = o;
}
