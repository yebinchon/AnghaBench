#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lu_mem ;
struct TYPE_7__ {int size; int /*<<< orphan*/ * hash; } ;
struct TYPE_8__ {int gcstate; int GCmemtrav; int GCestimate; int sweepstrgc; int /*<<< orphan*/  mainthread; int /*<<< orphan*/ ** sweepgc; int /*<<< orphan*/ ** sweepfin; TYPE_1__ strt; int /*<<< orphan*/  gray; } ;
typedef  TYPE_2__ global_State ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int GCSWEEPCOST ; 
 int GCSWEEPMAX ; 
 int GCSatomic ; 
#define  GCSpause 132 
#define  GCSpropagate 131 
#define  GCSsweep 130 
#define  GCSsweepstring 129 
#define  GCSsweepudata 128 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static lu_mem FUNC11 (lua_State *L) {
  global_State *g = FUNC0(L);
  switch (g->gcstate) {
    case GCSpause: {
      /* start to count memory traversed */
      g->GCmemtrav = g->strt.size * sizeof(GCObject*);
      FUNC5(!FUNC4(g));
      FUNC8(g);
      g->gcstate = GCSpropagate;
      return g->GCmemtrav;
    }
    case GCSpropagate: {
      if (g->gray) {
        lu_mem oldtrav = g->GCmemtrav;
        FUNC7(g);
        return g->GCmemtrav - oldtrav;  /* memory traversed in this step */
      }
      else {  /* no more `gray' objects */
        lu_mem work;
        int sw;
        g->gcstate = GCSatomic;  /* finish mark phase */
        g->GCestimate = g->GCmemtrav;  /* save what was counted */;
        work = FUNC1(L);  /* add what was traversed by 'atomic' */
        g->GCestimate += work;  /* estimate of total memory traversed */
        sw = FUNC3(L);
        return work + sw * GCSWEEPCOST;
      }
    }
    case GCSsweepstring: {
      int i;
      for (i = 0; i < GCSWEEPMAX && g->sweepstrgc + i < g->strt.size; i++)
        FUNC10(L, &g->strt.hash[g->sweepstrgc + i]);
      g->sweepstrgc += i;
      if (g->sweepstrgc >= g->strt.size)  /* no more strings to sweep? */
        g->gcstate = GCSsweepudata;
      return i * GCSWEEPCOST;
    }
    case GCSsweepudata: {
      if (g->sweepfin) {
        g->sweepfin = FUNC9(L, g->sweepfin, GCSWEEPMAX);
        return GCSWEEPMAX*GCSWEEPCOST;
      }
      else {
        g->gcstate = GCSsweep;
        return 0;
      }
    }
    case GCSsweep: {
      if (g->sweepgc) {
        g->sweepgc = FUNC9(L, g->sweepgc, GCSWEEPMAX);
        return GCSWEEPMAX*GCSWEEPCOST;
      }
      else {
        /* sweep main thread */
        GCObject *mt = FUNC6(g->mainthread);
        FUNC9(L, &mt, 1);
        FUNC2(L);
        g->gcstate = GCSpause;  /* finish collection */
        return GCSWEEPCOST;
      }
    }
    default: FUNC5(0); return 0;
  }
}