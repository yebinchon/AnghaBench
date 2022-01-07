
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
struct TYPE_11__ {int size; } ;
struct TYPE_12__ {int gcstate; int GCmemtrav; int gckind; int tobefnz; int mainthread; int finobj; int GCestimate; int * gray; TYPE_1__ strt; } ;
typedef TYPE_2__ global_State ;
typedef int GCObject ;


 TYPE_2__* G (int *) ;
 int GCFINALIZECOST ;
 int KGC_EMERGENCY ;
 int atomic (int *) ;
 int checkSizes (int *,TYPE_2__*) ;
 int entersweep (int *) ;
 int gettotalbytes (TYPE_2__*) ;
 int lua_assert (int *) ;
 int makewhite (TYPE_2__*,int ) ;
 int propagateall (TYPE_2__*) ;
 int propagatemark (TYPE_2__*) ;
 int restartcollection (TYPE_2__*) ;
 int runafewfinalizers (int *) ;
 int sweepstep (int *,TYPE_2__*,int,int *) ;

__attribute__((used)) static lu_mem singlestep (lua_State *L) {
  global_State *g = G(L);
  switch (g->gcstate) {
    case 133: {
      g->GCmemtrav = g->strt.size * sizeof(GCObject*);
      restartcollection(g);
      g->gcstate = 132;
      return g->GCmemtrav;
    }
    case 132: {
      g->GCmemtrav = 0;
      lua_assert(g->gray);
      propagatemark(g);
       if (g->gray == ((void*)0))
        g->gcstate = 135;
      return g->GCmemtrav;
    }
    case 135: {
      lu_mem work;
      propagateall(g);
      work = atomic(L);
      entersweep(L);
      g->GCestimate = gettotalbytes(g); ;
      return work;
    }
    case 131: {
      return sweepstep(L, g, 129, &g->finobj);
    }
    case 129: {
      return sweepstep(L, g, 128, &g->tobefnz);
    }
    case 128: {
      return sweepstep(L, g, 130, ((void*)0));
    }
    case 130: {
      makewhite(g, g->mainthread);
      checkSizes(L, g);
      g->gcstate = 134;
      return 0;
    }
    case 134: {
      if (g->tobefnz && g->gckind != KGC_EMERGENCY) {
        int n = runafewfinalizers(L);
        return (n * GCFINALIZECOST);
      }
      else {
        g->gcstate = 133;
        return 0;
      }
    }
    default: lua_assert(0); return 0;
  }
}
