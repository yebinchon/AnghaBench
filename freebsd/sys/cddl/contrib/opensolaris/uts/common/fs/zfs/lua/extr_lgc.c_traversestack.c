
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_7__ {int stacksize; TYPE_3__* ci; TYPE_3__ base_ci; int * stack; int * top; } ;
typedef TYPE_1__ lua_State ;
typedef int lu_mem ;
struct TYPE_8__ {scalar_t__ gcstate; } ;
typedef TYPE_2__ global_State ;
typedef int TValue ;
typedef int * StkId ;
typedef TYPE_3__ CallInfo ;


 scalar_t__ GCSatomic ;
 int markvalue (TYPE_2__*,int *) ;
 int setnilvalue (int *) ;

__attribute__((used)) static lu_mem traversestack (global_State *g, lua_State *th) {
  int n = 0;
  StkId o = th->stack;
  if (o == ((void*)0))
    return 1;
  for (; o < th->top; o++)
    markvalue(g, o);
  if (g->gcstate == GCSatomic) {
    StkId lim = th->stack + th->stacksize;
    for (; o < lim; o++)
      setnilvalue(o);
  }
  else {
    CallInfo *ci;
    for (ci = &th->base_ci; ci != th->ci; ci = ci->next)
      n++;
  }
  return sizeof(lua_State) + sizeof(TValue) * th->stacksize +
         sizeof(CallInfo) * n;
}
