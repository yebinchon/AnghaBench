
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ k; } ;
struct ConsControl {scalar_t__ tostore; int na; TYPE_2__* t; TYPE_3__ v; } ;
struct TYPE_5__ {int info; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef int FuncState ;


 scalar_t__ LUA_MULTRET ;
 scalar_t__ VVOID ;
 scalar_t__ hasmultret (scalar_t__) ;
 int luaK_exp2nextreg (int *,TYPE_3__*) ;
 int luaK_setlist (int *,int ,int ,scalar_t__) ;
 int luaK_setmultret (int *,TYPE_3__*) ;

__attribute__((used)) static void lastlistfield (FuncState *fs, struct ConsControl *cc) {
  if (cc->tostore == 0) return;
  if (hasmultret(cc->v.k)) {
    luaK_setmultret(fs, &cc->v);
    luaK_setlist(fs, cc->t->u.info, cc->na, LUA_MULTRET);
    cc->na--;
  }
  else {
    if (cc->v.k != VVOID)
      luaK_exp2nextreg(fs, &cc->v);
    luaK_setlist(fs, cc->t->u.info, cc->na, cc->tostore);
  }
}
