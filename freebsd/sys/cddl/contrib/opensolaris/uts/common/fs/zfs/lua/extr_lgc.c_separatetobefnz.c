
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int * tobefnz; int * finobj; } ;
typedef TYPE_1__ global_State ;
struct TYPE_5__ {int * next; int marked; } ;
typedef int GCObject ;


 int FINALIZEDBIT ;
 TYPE_1__* G (int *) ;
 int SEPARATED ;
 TYPE_2__* gch (int *) ;
 int isfinalized (int *) ;
 scalar_t__ iswhite (int *) ;
 int l_setbit (int ,int ) ;
 int lua_assert (int) ;
 int testbit (int ,int ) ;

__attribute__((used)) static void separatetobefnz (lua_State *L, int all) {
  global_State *g = G(L);
  GCObject **p = &g->finobj;
  GCObject *curr;
  GCObject **lastnext = &g->tobefnz;

  while (*lastnext != ((void*)0))
    lastnext = &gch(*lastnext)->next;
  while ((curr = *p) != ((void*)0)) {
    lua_assert(!isfinalized(curr));
    lua_assert(testbit(gch(curr)->marked, SEPARATED));
    if (!(iswhite(curr) || all))
      p = &gch(curr)->next;
    else {
      l_setbit(gch(curr)->marked, FINALIZEDBIT);
      *p = gch(curr)->next;
      gch(curr)->next = *lastnext;
      *lastnext = curr;
      lastnext = &gch(curr)->next;
    }
  }
}
