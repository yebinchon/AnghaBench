
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
typedef int global_State ;
struct TYPE_2__ {int marked; scalar_t__ tt; int * next; } ;
typedef int GCObject ;


 int * G (int *) ;
 scalar_t__ LUA_TTHREAD ;
 int OLDBIT ;
 int bitmask (int ) ;
 int cast_byte (int) ;
 int freeobj (int *,int *) ;
 TYPE_1__* gch (int *) ;
 int gco2th (int *) ;
 scalar_t__ isdeadm (int,int) ;
 scalar_t__ isgenerational (int *) ;
 int luaC_white (int *) ;
 int maskcolors ;
 int otherwhite (int *) ;
 int sweepthread (int *,int ) ;
 scalar_t__ testbits (int,int) ;

__attribute__((used)) static GCObject **sweeplist (lua_State *L, GCObject **p, lu_mem count) {
  global_State *g = G(L);
  int ow = otherwhite(g);
  int toclear, toset;
  int tostop;
  if (isgenerational(g)) {
    toclear = ~0;
    toset = bitmask(OLDBIT);
    tostop = bitmask(OLDBIT);
  }
  else {
    toclear = maskcolors;
    toset = luaC_white(g);
    tostop = 0;
  }
  while (*p != ((void*)0) && count-- > 0) {
    GCObject *curr = *p;
    int marked = gch(curr)->marked;
    if (isdeadm(ow, marked)) {
      *p = gch(curr)->next;
      freeobj(L, curr);
    }
    else {
      if (testbits(marked, tostop))
        return ((void*)0);
      if (gch(curr)->tt == LUA_TTHREAD)
        sweepthread(L, gco2th(curr));

      gch(curr)->marked = cast_byte((marked & toclear) | toset);
      p = &gch(curr)->next;
    }
  }
  return (*p == ((void*)0)) ? ((void*)0) : p;
}
