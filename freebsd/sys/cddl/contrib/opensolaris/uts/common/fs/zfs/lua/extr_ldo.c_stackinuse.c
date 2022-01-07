
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ top; scalar_t__ stack_last; scalar_t__ stack; TYPE_2__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_5__ {scalar_t__ top; struct TYPE_5__* previous; } ;
typedef scalar_t__ StkId ;
typedef TYPE_2__ CallInfo ;


 int cast_int (scalar_t__) ;
 int lua_assert (int) ;

__attribute__((used)) static int stackinuse (lua_State *L) {
  CallInfo *ci;
  StkId lim = L->top;
  for (ci = L->ci; ci != ((void*)0); ci = ci->previous) {
    lua_assert(ci->top <= L->stack_last);
    if (lim < ci->top) lim = ci->top;
  }
  return cast_int(lim - L->stack) + 1;
}
