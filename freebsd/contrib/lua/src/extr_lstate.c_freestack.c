
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nci; int stacksize; int * stack; int base_ci; int * ci; } ;
typedef TYPE_1__ lua_State ;


 int luaE_freeCI (TYPE_1__*) ;
 int luaM_freearray (TYPE_1__*,int *,int ) ;
 int lua_assert (int) ;

__attribute__((used)) static void freestack (lua_State *L) {
  if (L->stack == ((void*)0))
    return;
  L->ci = &L->base_ci;
  luaE_freeCI(L);
  lua_assert(L->nci == 0);
  luaM_freearray(L, L->stack, L->stacksize);
}
