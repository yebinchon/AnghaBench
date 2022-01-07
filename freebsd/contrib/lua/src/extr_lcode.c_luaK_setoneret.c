
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int info; } ;
struct TYPE_6__ {scalar_t__ k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef int FuncState ;


 int GETARG_A (int ) ;
 int GETARG_C (int ) ;
 int SETARG_B (int ,int) ;
 scalar_t__ VCALL ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VRELOCABLE ;
 scalar_t__ VVARARG ;
 int getinstruction (int *,TYPE_2__*) ;
 int lua_assert (int) ;

void luaK_setoneret (FuncState *fs, expdesc *e) {
  if (e->k == VCALL) {

    lua_assert(GETARG_C(getinstruction(fs, e)) == 2);
    e->k = VNONRELOC;
    e->u.info = GETARG_A(getinstruction(fs, e));
  }
  else if (e->k == VVARARG) {
    SETARG_B(getinstruction(fs, e), 2);
    e->k = VRELOCABLE;
  }
}
