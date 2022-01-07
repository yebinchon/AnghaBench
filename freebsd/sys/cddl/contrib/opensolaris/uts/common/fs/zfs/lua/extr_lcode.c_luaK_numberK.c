
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int r ;
struct TYPE_9__ {int * top; } ;
typedef TYPE_2__ lua_State ;
typedef scalar_t__ lua_Number ;
struct TYPE_10__ {TYPE_1__* ls; } ;
struct TYPE_8__ {TYPE_2__* L; } ;
typedef int TValue ;
typedef TYPE_3__ FuncState ;


 int addk (TYPE_3__*,int *,int *) ;
 int luaS_newlstr (TYPE_2__*,char*,int) ;
 scalar_t__ luai_numisnan (int *,scalar_t__) ;
 int setnvalue (int *,scalar_t__) ;
 int setsvalue (TYPE_2__*,int ,int ) ;

int luaK_numberK (FuncState *fs, lua_Number r) {
  int n;
  lua_State *L = fs->ls->L;
  TValue o;
  setnvalue(&o, r);
  if (r == 0 || luai_numisnan(((void*)0), r)) {

    setsvalue(L, L->top++, luaS_newlstr(L, (char *)&r, sizeof(r)));
    n = addk(fs, L->top - 1, &o);
    L->top--;
  }
  else
    n = addk(fs, &o, &o);
  return n;
}
