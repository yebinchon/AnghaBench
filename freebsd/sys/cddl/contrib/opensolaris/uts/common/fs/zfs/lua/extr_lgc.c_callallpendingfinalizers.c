
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ tobefnz; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCTM (int *,int) ;
 int resetoldbit (scalar_t__) ;

__attribute__((used)) static void callallpendingfinalizers (lua_State *L, int propagateerrors) {
  global_State *g = G(L);
  while (g->tobefnz) {
    resetoldbit(g->tobefnz);
    GCTM(L, propagateerrors);
  }
}
