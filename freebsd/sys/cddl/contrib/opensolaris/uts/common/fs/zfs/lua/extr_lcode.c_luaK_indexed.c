
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ vt; int idx; int t; } ;
struct TYPE_9__ {TYPE_1__ ind; int info; } ;
struct TYPE_10__ {scalar_t__ k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;


 scalar_t__ VINDEXED ;
 int VLOCAL ;
 scalar_t__ VUPVAL ;
 scalar_t__ check_exp (int ,int ) ;
 int hasjumps (TYPE_3__*) ;
 int luaK_exp2RK (int *,TYPE_3__*) ;
 int lua_assert (int) ;
 int vkisinreg (scalar_t__) ;

void luaK_indexed (FuncState *fs, expdesc *t, expdesc *k) {
  lua_assert(!hasjumps(t));
  t->u.ind.t = t->u.info;
  t->u.ind.idx = luaK_exp2RK(fs, k);
  t->u.ind.vt = (t->k == VUPVAL) ? VUPVAL
                                 : check_exp(vkisinreg(t->k), VLOCAL);
  t->k = VINDEXED;
}
