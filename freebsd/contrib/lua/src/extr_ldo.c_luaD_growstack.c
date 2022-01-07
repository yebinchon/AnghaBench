
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int stacksize; scalar_t__ stack; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;


 int ERRORSTACKSIZE ;
 int EXTRA_STACK ;
 int LUAI_MAXSTACK ;
 int LUA_ERRERR ;
 int cast_int (scalar_t__) ;
 int luaD_reallocstack (TYPE_1__*,int) ;
 int luaD_throw (TYPE_1__*,int ) ;
 int luaG_runerror (TYPE_1__*,char*) ;

void luaD_growstack (lua_State *L, int n) {
  int size = L->stacksize;
  if (size > LUAI_MAXSTACK)
    luaD_throw(L, LUA_ERRERR);
  else {
    int needed = cast_int(L->top - L->stack) + n + EXTRA_STACK;
    int newsize = 2 * size;
    if (newsize > LUAI_MAXSTACK) newsize = LUAI_MAXSTACK;
    if (newsize < needed) newsize = needed;
    if (newsize > LUAI_MAXSTACK) {
      luaD_reallocstack(L, ERRORSTACKSIZE);
      luaG_runerror(L, "stack overflow");
    }
    else
      luaD_reallocstack(L, newsize);
  }
}
