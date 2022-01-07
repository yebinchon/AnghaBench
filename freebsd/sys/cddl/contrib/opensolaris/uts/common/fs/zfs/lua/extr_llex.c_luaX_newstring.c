
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_11__ {TYPE_1__* fs; TYPE_2__* L; } ;
struct TYPE_9__ {int h; } ;
typedef int TValue ;
typedef int TString ;
typedef TYPE_3__ LexState ;


 int keyfromval (int *) ;
 int luaC_checkGC (TYPE_2__*) ;
 int * luaH_set (TYPE_2__*,int ,scalar_t__) ;
 int * luaS_newlstr (TYPE_2__*,char const*,size_t) ;
 int * rawtsvalue (int ) ;
 int setbvalue (int *,int) ;
 int setsvalue2s (TYPE_2__*,int ,int *) ;
 scalar_t__ ttisnil (int *) ;

TString *luaX_newstring (LexState *ls, const char *str, size_t l) {
  lua_State *L = ls->L;
  TValue *o;
  TString *ts = luaS_newlstr(L, str, l);
  setsvalue2s(L, L->top++, ts);
  o = luaH_set(L, ls->fs->h, L->top - 1);
  if (ttisnil(o)) {


    setbvalue(o, 1);
    luaC_checkGC(L);
  }
  else {
    ts = rawtsvalue(keyfromval(o));
  }
  L->top--;
  return ts;
}
