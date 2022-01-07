
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int stacksize; } ;
typedef TYPE_1__ lua_State ;


 int EXTRA_STACK ;
 int LUAI_MAXSTACK ;
 int condmovestack (TYPE_1__*) ;
 int luaD_reallocstack (TYPE_1__*,int) ;
 int stackinuse (TYPE_1__*) ;

void luaD_shrinkstack (lua_State *L) {
  int inuse = stackinuse(L);
  int goodsize = inuse + (inuse / 8) + 2*EXTRA_STACK;
  if (goodsize > LUAI_MAXSTACK) goodsize = LUAI_MAXSTACK;
  if (inuse > LUAI_MAXSTACK ||
      goodsize >= L->stacksize)
    condmovestack(L);
  else
    luaD_reallocstack(L, goodsize);
}
