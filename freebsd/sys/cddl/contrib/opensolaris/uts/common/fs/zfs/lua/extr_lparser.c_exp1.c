
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int info; } ;
struct TYPE_9__ {scalar_t__ k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_10__ {int fs; } ;
typedef TYPE_3__ LexState ;


 scalar_t__ VNONRELOC ;
 int expr (TYPE_3__*,TYPE_2__*) ;
 int luaK_exp2nextreg (int ,TYPE_2__*) ;
 int lua_assert (int) ;

__attribute__((used)) static int exp1 (LexState *ls) {
  expdesc e;
  int reg;
  expr(ls, &e);
  luaK_exp2nextreg(ls->fs, &e);
  lua_assert(e.k == VNONRELOC);
  reg = e.u.info;
  return reg;
}
