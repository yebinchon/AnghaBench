
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * allgc; int * tobefnz; } ;
typedef TYPE_1__ global_State ;
struct TYPE_7__ {int marked; int * next; } ;
typedef int GCObject ;


 int SEPARATED ;
 TYPE_5__* gch (int *) ;
 int isfinalized (int *) ;
 int isold (int *) ;
 int keepinvariantout (TYPE_1__*) ;
 int lua_assert (int) ;
 int makewhite (TYPE_1__*,int *) ;
 int resetbit (int ,int ) ;

__attribute__((used)) static GCObject *udata2finalize (global_State *g) {
  GCObject *o = g->tobefnz;
  lua_assert(isfinalized(o));
  g->tobefnz = gch(o)->next;
  gch(o)->next = g->allgc;
  g->allgc = o;
  resetbit(gch(o)->marked, SEPARATED);
  lua_assert(!isold(o));
  if (!keepinvariantout(g))
    makewhite(g, o);
  return o;
}
