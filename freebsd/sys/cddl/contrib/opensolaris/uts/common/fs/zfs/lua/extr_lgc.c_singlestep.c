
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
struct TYPE_7__ {int size; int * hash; } ;
struct TYPE_8__ {int gcstate; int GCmemtrav; int GCestimate; int sweepstrgc; int mainthread; int ** sweepgc; int ** sweepfin; TYPE_1__ strt; int gray; } ;
typedef TYPE_2__ global_State ;
typedef int GCObject ;


 TYPE_2__* G (int *) ;
 int GCSWEEPCOST ;
 int GCSWEEPMAX ;
 int GCSatomic ;





 int atomic (int *) ;
 int checkSizes (int *) ;
 int entersweep (int *) ;
 int isgenerational (TYPE_2__*) ;
 int lua_assert (int) ;
 int * obj2gco (int ) ;
 int propagatemark (TYPE_2__*) ;
 int restartcollection (TYPE_2__*) ;
 void* sweeplist (int *,int **,int) ;
 int sweepwholelist (int *,int *) ;

__attribute__((used)) static lu_mem singlestep (lua_State *L) {
  global_State *g = G(L);
  switch (g->gcstate) {
    case 132: {

      g->GCmemtrav = g->strt.size * sizeof(GCObject*);
      lua_assert(!isgenerational(g));
      restartcollection(g);
      g->gcstate = 131;
      return g->GCmemtrav;
    }
    case 131: {
      if (g->gray) {
        lu_mem oldtrav = g->GCmemtrav;
        propagatemark(g);
        return g->GCmemtrav - oldtrav;
      }
      else {
        lu_mem work;
        int sw;
        g->gcstate = GCSatomic;
        g->GCestimate = g->GCmemtrav; ;
        work = atomic(L);
        g->GCestimate += work;
        sw = entersweep(L);
        return work + sw * GCSWEEPCOST;
      }
    }
    case 129: {
      int i;
      for (i = 0; i < GCSWEEPMAX && g->sweepstrgc + i < g->strt.size; i++)
        sweepwholelist(L, &g->strt.hash[g->sweepstrgc + i]);
      g->sweepstrgc += i;
      if (g->sweepstrgc >= g->strt.size)
        g->gcstate = 128;
      return i * GCSWEEPCOST;
    }
    case 128: {
      if (g->sweepfin) {
        g->sweepfin = sweeplist(L, g->sweepfin, GCSWEEPMAX);
        return GCSWEEPMAX*GCSWEEPCOST;
      }
      else {
        g->gcstate = 130;
        return 0;
      }
    }
    case 130: {
      if (g->sweepgc) {
        g->sweepgc = sweeplist(L, g->sweepgc, GCSWEEPMAX);
        return GCSWEEPMAX*GCSWEEPCOST;
      }
      else {

        GCObject *mt = obj2gco(g->mainthread);
        sweeplist(L, &mt, 1);
        checkSizes(L);
        g->gcstate = 132;
        return GCSWEEPCOST;
      }
    }
    default: lua_assert(0); return 0;
  }
}
